#---------------------------VARIABLES------------------------------

NUMBERS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "K", "Q", "A"]

LETTERS = ['H', 'S', 'D', 'C']

DEALERSTAYSCORE = 17

MAXSCORE = 21

#----------------------------METHODS---------------------------------
# rubocop:disable Metrics/MethodLength
def welcome_greeting
  puts <<~HEREDOC
  Welcome to the game Twenty-One!!

  => You will be playing against the computer(dealer) for multiple rounds,
     and the closest to 21 without going over wins the round.
  => Each round is worth 1 point, and the first to 5 points wins the
     game!
  => In this game there is a deck of shuffled 52 cards.
  => Each round you(player) will be given 2 cards face up.
  => The dealer will also be given two cards, but only one will be face
     up. The other card will be face down.
  => Once you have been dealt your first set of cards you need to decide
     if you want another card (a hit), or you want to "stay" and keep the
     the cards you have.
  => If neither the dealer or player reaches 21, the closest to 21
     wins.
  => If either the dealer or player go over 21 they will automatically
     "bust" which means they lose the round.
  => If the player and dealer have the same total, it will be a tie.

  => Here are how the card values are determined:
      - All numbers 2 - 10 are worth their face value
      - King(K), Jack(J), and Queen(Q) are worth 10 points.
      - The Ace(A) is worth either 11 or 1 depending on if the cards you have
         exceed 21. If they do then Ace is worth 1 and if they don't it
         is worth 11.

  Once you are done reading the instructions and are ready to start the game
  press enter
  HEREDOC

  answer = gets.chomp.downcase
  until answer.include?("")
    sleep
  end
end
# rubocop: enable Metrics/MethodLength

def cards
  deck = []
  LETTERS.each do |letter|
    NUMBERS.each do |num|
      deck << [letter, num]
    end
  end
  deck.shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum = sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > MAXSCORE
  end

  sum
end

def first_deal(deck, hand)
  2.times do
    hand << deck.pop
  end
  hand
end

def display_scoreboard(total_score)
  "Scoreboard: Player: #{total_score[:player]}, Dealer: #{total_score[:dealer]}"
end

def display_round(round, scoreboard)
  puts "Round #{round} #{scoreboard}"
end

def display_first_hand_greeting
  puts "Your hand is being dealt... please wait"
  sleep(2)
  system "clear"
end

def display_first_hand(dealer_hand, player_hand)
  display_divider
  puts "Dealer cards: #{dealer_hand[0]} and the second card is hidden"
  puts "Player Cards: #{player_hand[0]} #{player_hand[1]}"
  display_divider
  puts "Player total: #{total(player_hand)}"
  display_divider
end

def busted?(total_score)
  total_score > MAXSCORE
end

def hit(deck, hand)
  hand << deck.pop
end

def display_hit_or_stay
  puts "Do you want to (h)it or (s)tay?"
end

def display_player_hits(deck, hand)
  hit(deck, hand)
  puts "You choose to hit."
  puts "Your cards are now: #{hand}"
  puts "Your total is now: #{total(hand)}"
  display_divider
end

def display_dealer_hits(deck, hand)
  hit(deck, hand)
  puts "The dealer chose to hit."
  puts "The dealers cards are now: #{hand}"
  puts "The dealers total is: #{total(hand)}"
  display_divider
end

def display_player_stays(hand)
  puts "You stayed at #{total(hand)}"
  display_divider
end

def display_dealer_stays(hand)
  puts "The dealer stayed at #{total(hand)}"
  display_divider
end

def display_dealer_turn_flash
  msg = "It is the dealers turn.... please wait"
  5.times do
    print "\r#{msg}"
    sleep 0.5
    print "\r#{' ' * msg.size}"
    sleep 0.5
  end
  system "clear"
end

def display_thinking_flash
  msg = "Dealer is thinking....."
  3.times do
    print "\r#{msg}"
    sleep 0.5
    print "\r#{' ' * msg.size}"
    sleep 0.5
  end
  sleep(1)
  system "clear"
end

def display_invalid_response
  display_divider
  puts "That is an invalid response. Please enter s for stay or h for hit"
  display_divider
end

def display_compare_cards(player, dealer)
  puts "Dealer cards: #{dealer}, with a total of: #{total(dealer)}"
  puts "Player cards: #{player}, with a total of: #{total(player)}"
  display_divider
end

def display_divider
  puts "----------------------------------------"
end

def determine_winner(player, dealer)
  if player > MAXSCORE
    :play_busted
  elsif dealer > MAXSCORE
    :deal_busted
  elsif player > dealer
    :player
  elsif dealer > player
    :dealer
  elsif player == dealer
    :tie
  end
end

def display_winner(player, dealer)
  if determine_winner(player, dealer) == :play_busted
    puts "You busted this round! Better luck next time"
  elsif determine_winner(player, dealer) == :deal_busted
    puts "The dealer busted! You won this round!!"
  elsif determine_winner(player, dealer) == :player
    puts "The player won this round! You rock!!"
  elsif determine_winner(player, dealer) == :dealer
    puts "The dealer won this round! Better luck next time"
  elsif determine_winner(player, dealer) == :tie
    puts "You didn't win or lose this round.... it's a tie!"
  end
  display_divider
end

def calculate_score(total_score, player, dealer)
  total_score[:player] += 1 if determine_winner(player, dealer) == :player
  total_score[:dealer] += 1 if determine_winner(player, dealer) == :dealer
  total_score[:dealer] += 1 if determine_winner(player, dealer) == :play_busted
  total_score[:player] += 1 if determine_winner(player, dealer) == :deal_busted
end

def twenty_one?(player, dealer)
  total(player) == MAXSCORE || total(dealer) == MAXSCORE
end

def play_again?
  loop do
    puts "Would you like to play again??"
    another_calculation = gets.chomp.downcase.strip
    case another_calculation
    when 'yes', 'y'
      break true
    when 'no', 'n'
      break false
    else
      puts "Invalid answer. Please type Y/Yes or N/No"
    end
  end
end

def display_ready_to_continue
  puts "When you are ready to start the next round hit enter"
  response = gets.chomp.downcase
  sleep until response.include?("")
  system "clear"
end

def grand_winner?(total_score)
  total_score[:player] == 5 || total_score[:dealer] == 5
end

def who_won(total_score)
  if total_score[:player] == 5
    "player"
  elsif total_score[:dealer] == 5
    "dealer"
  end
end

def display_grand_winner(total_score)
  if who_won(total_score) == "player"
    puts "THE GRAND WINNER IS THE PLAYER!!"
  else
    puts "THE GRAND WINNER IS THE DEALER!!"
  end
  display_divider
end

# rubocop: disable Layout/LineLength
def display_final_score(total_score)
  puts "Final scores: Player => #{total_score[:player]} : Dealer => #{total_score[:dealer]}"
  display_divider
end
# rubocop: enable Layout/LineLength

#----------------------MAIN EXECUTION-------------------
system "clear"
welcome_greeting
system "clear"

loop do # main loop
  round = 1
  total_score = { player: 0, dealer: 0 }

  loop do # individual game
    display_first_hand_greeting
    display_round(round, display_scoreboard(total_score))
    deck = cards
    player_hand = []
    dealer_hand = []
    player_total = total(player_hand)
    dealer_total = total(dealer_hand)
    first_deal(deck, player_hand)
    first_deal(deck, dealer_hand)
    display_first_hand(dealer_hand, player_hand)
    round += 1

    loop do # end of game loop
      player_total = total(player_hand)
      dealer_total = total(dealer_hand)
      break if twenty_one?(player_hand, dealer_hand)

      loop do # player
        display_hit_or_stay
        user_response = gets.chomp.downcase.strip
        if user_response == "h"
          display_player_hits(deck, player_hand)
          player_total = total(player_hand)
          break if busted?(player_total)
        elsif user_response == "s"
          display_player_stays(player_hand)
          break
        else
          puts "That is an invalid response. Please enter h or s"
        end
      end

      break if busted?(player_total)

      display_dealer_turn_flash

      loop do # dealer
        if dealer_total >= DEALERSTAYSCORE
          display_dealer_stays(dealer_hand)
          break
        end
        display_dealer_hits(deck, dealer_hand)
        sleep(3)
        system "clear"
        display_thinking_flash
        dealer_total = total(dealer_hand)
        break if busted?(dealer_total)
      end
      break
    end

    display_compare_cards(player_hand, dealer_hand)
    determine_winner(player_total, dealer_total)
    display_winner(player_total, dealer_total)
    calculate_score(total_score, player_total, dealer_total)

    if !grand_winner?(total_score)
      display_ready_to_continue
    elsif grand_winner?(total_score)
      who_won(total_score)
      break
    end
  end

  sleep(3)
  system "clear"
  display_grand_winner(total_score)
  display_final_score(total_score)
  break unless play_again?
  display_divider
  system "clear"
end

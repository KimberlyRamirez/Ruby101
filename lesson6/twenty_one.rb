NUMBERS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "K", "Q", "A" ]

LETTERS = ['H', 'S', 'D', 'C']

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
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  total(cards) > 21
end

def player_move(deck)
    puts "Do you want to hit or stay?"
    answer = gets.chomp.downcase
end

def computer_move(deck)
  puts "It is now the dealers turn"
    dealer_cards = []
    loop do 
      break if total(dealer_cards) >= 17

      puts "The dealer hit!"
      puts "---------------"
      dealer_cards << deck.pop
    end 
    p dealer_cards
    puts "The dealer stays at: #{total(dealer_cards)}"
  end 
  

deck = cards
busted?(deck)
player_cards = []
dealer_cards = []

loop do 
  if player_move(deck) == "hit"
  player_cards << deck.pop 
    puts "You chose to hit your cards are now: #{total(player_cards)}"
    puts "-------------------------------------------------"
  elsif player_move(deck) == "stay"
    puts "You stayed at: #{total(player_cards)}"
    puts "-----------------------------------------------------------"
    break
  else 
    puts "That is an invalid response, please enter hit or stay"
  end 

  loop do 
  busted?(player_cards)
    break
  else
    puts "That is not a valid option please enter hit or stay"
  end 
  p player_cards
end

computer_move(deck)

=begin 
1st 
- explain rules
  -Heredoc

2nd 
- deal the player and the computer two cards
- show the player what their cards are 

3rd
- Ask the player if they want to hit or stay
- if player selects hit you need to call the hit method 
  and add it to the players hand.
- display to player what their card was that they got 
- delete out of deck
- keep looping until player selects stay

4th 
- calculate how much the two computer cards equal
- if computer cards are less than 17, hit. 
- if computer cards are 17 stay 
- computer will keep looping through and hitting until it reaches 17 or busts
- it only breaks out of the loop once it has 17 or more, otherwise it will bust

5th 
-need a way take cards out of deck everytime it is picked during a hit 
- hit, and take the return value out of the deck

6th 
- the player needs their player hand always tracked
- make a player_hand method which puts each hit during a players turn into 
  a data structure that can display to the player 

7th 
-make a method that calculates the winner 

8th 
-make a method that displays the winner 

9th 
-figure out a way to 

=end


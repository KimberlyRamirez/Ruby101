#--------------------CONSTANTS & DEPENDENCIES-------------------#

WIN_SCORE = 5

VALID_CHOICES = %w(r p sc sp l)

WIN = {
  'r' => { full_name: 'rock', wins_over: %w(l sc) },
  'p' => { full_name: 'paper', wins_over: %w(r sp) },
  'sc' => { full_name: 'scissors', wins_over: %w(p l) },
  'sp' => { full_name: 'Spock', wins_over: %w(sc r) },
  'l' => { full_name: 'lizard', wins_over: %w(sp p) }
}

#--------------------------METHODS-----------------------------#
def system_clear
  system('clear') || system('cls')
end

def display_greeting
  puts "Welcome to the game Rock, Paper, Scissors, Spock, and Lizard!!"
  puts "------------------------------------------------------------"
end

def display_rules
  puts <<~HEREDOC
  To play the game you will need to type r (rock), p (paper) , sc (scissors),
  sp (spock), or l (lizard) below. Each round winner receieves 1 point.
  Whichever player reaches 5 points first is crowned the winner!
  Live Long and Prosper!
  ----------------------------------------------------------------
  HEREDOC
end

def display_round(round)
  puts "Round #{round} Scoreboard:"
end

def retrieve_user_move
  choice = ''
  loop do
    puts "What move would you like to play?"
    choice = gets.chomp.downcase.strip
    break if VALID_CHOICES.include?(choice)
    puts "Not a valid choice. Please try again."
    puts "-------------------------------------"
  end
  choice
end

def win?(first, second)
  WIN[first][:wins_over].include?(second)
end

def display_user_move(user_choice)
  puts "You played the move #{WIN[user_choice][:full_name]}"
  puts "----------------------------------------------------"
end

def display_computer_move(choice)
  puts "The computer played the move #{WIN[choice][:full_name]}"
  puts "-------------------------------------------------------"
end

def display_round_winner(player, computer)
  if win?(player, computer)
    puts "You won! You are a rockstar!"
  elsif win?(computer, player)
    puts "The computer won! Better luck next time!"
  else
    puts "It's a tie!"
  end
  puts "------------------------------------------"
end

def calculate_score(total_score, user_move, computer_choice)
  total_score[:user] += 1 if win?(user_move, computer_choice)
  total_score[:computer] += 1 if win?(computer_choice, user_move)
end

def display_round_score(total_score, round)
  puts display_round(round)
  puts "User total score:", total_score[:user]
  puts "Computer total score:", total_score[:computer]
  puts "----------------------------------------------"
end

def display_grand_winner(total_score)
  system_clear
  puts "You are the grand winner!!" if total_score[:user] == WIN_SCORE
  if total_score[:computer] == WIN_SCORE
    puts "Womp, womp, womp! The computer is the grand winner!"
  end
end

def grand_winner?(total_score)
  total_score[:user] == WIN_SCORE || total_score[:computer] == WIN_SCORE
end

def play_again?
  loop do
    puts "Would you like to play again?(Yes/y or No/n) "
    another_battle = gets.chomp.downcase.strip
    case another_battle
    when 'yes', 'y'
      break true
    when 'no', 'n'
      break false
    else
      puts "Invalid answer. Please type Y/Yes or N/No"
    end
  end
end

def display_goodbye
  puts "Goodbye! Thank you for playing!!"
end

#----------------------MAIN EXECUTION---------------------#

system_clear

display_greeting
display_rules

total_score = { user: 0, computer: 0 }
round = 1

loop do
  loop do
    computer_choice = VALID_CHOICES.sample
    user_move = retrieve_user_move
    display_user_move(user_move)
    display_computer_move(computer_choice)

    display_round_winner(user_move, computer_choice)
    calculate_score(total_score, user_move, computer_choice)
    display_round_score(total_score, round)

    break if grand_winner?(total_score)
    round += 1
  end

  grand_winner?(total_score)
  display_grand_winner(total_score)
  display_round_score(total_score, round)

  if play_again?
    round = 1
    total_score[:user] = 0
    total_score[:computer] = 0
    system_clear
  else
    break
  end
end

display_goodbye

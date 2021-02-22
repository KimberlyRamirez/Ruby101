require 'pry'
require 'pry-byebug'
INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"
WINNING_LINES = [[1, 2,3], [4, 5, 6], [7, 8, 9]] + #rows
[[1, 4, 7], [2, 5, 8], [3, 6, 9]] + #columns
[[1, 5, 9], [3, 5, 7]] #diagnals
def prompt(msg)
  puts "=> #{msg}"
end
def display_round_scoreboard(round, total_score)
  puts "Round #{round} Scoreboard: Player: #{total_score["player"]} Computer: #{total_score["computer"]}"
end
# rubocop:disable Metrics/MethodLength
def display_board(brd, round, total_score)
  system "clear"
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  display_round_scoreboard(round, total_score)
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
#rubocop: enable Metrics/MethodLength
def intialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = INITIAL_MARKER}
  new_board
end
def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end
def player_places_piece!(brd)
  square = ""
  loop do
    prompt "Choose a square (#{empty_squares(brd).join(', ')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end
def find_at_risk_square(line, board, marker)
  # binding.pry
  if board.values_at(*line).count(marker) == 2
      board.select{|k,v| line.include?(k) && v == 'INITIAL_MARKER'}.keys.first
  else
    nil
  end
end
def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  # binding.pry
  puts square
  sleep(2)
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end
  puts '------------------'
  puts square
  sleep(2)
  if !square
    square = empty_squares(brd).sample
  end
  puts '--------------------'
  puts square
  sleep(2)
  brd[square] = COMPUTER_MARKER
end
def board_full?(brd)
  empty_squares(brd).empty?
end
def someone_won?(brd)
  !!detect_winner(brd)
end
def detect_winner(brd)
  WINNING_LINES.each do |line|
  if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
       return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
          return "Computer"
    end
  end
  nil
end
def round_winner(board)
  if detect_winner(board) == "Player"
    puts "--------------------------"
    puts "The round winner is player"
    puts "--------------------------"
  elsif detect_winner(board) == "Computer"
    puts "--------------------------------"
    puts "The round winner is the computer"
    puts "--------------------------------"
  else
    puts "It's a tie!"
  end
end
def calculate_score(total_score, board)
  total_score["player"] += 1 if detect_winner(board) == "Player"
  total_score["computer"] += 1 if detect_winner(board) == "Computer"
end
def display_grand_winner(total_score)
  if total_score["player"] == 2
    puts "THE GRAND WINNER IS PLAYER! YOU ROCK!"
  elsif total_score["computer"] == 2
    puts "THE GRAND WINNER IS COMPUTER!"
  end
end
def grand_winner?(total_score)
  if total_score["player"] == 2 || total_score["computer"] == 2
    true
  else
    false
  end
end
loop do # main loop
  round = 0
  total_score = {"player" => 0, "computer" => 0}
  loop do # grand_winner loop
    board = intialize_board
    display_board(board, round, total_score)
    round += 1
      loop do #round loop
        display_board(board, round, total_score)
        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
        computer_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
      end
    round_winner(board)
    calculate_score(total_score, board)
    sleep(2)
    display_grand_winner(total_score)
    break if grand_winner?(total_score)
  end
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

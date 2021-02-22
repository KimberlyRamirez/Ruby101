WINNING_LINES = [
  [1, 2, 3], [4, 5, 6], [7, 8, 9],
  [1, 4, 7], [2, 5, 8], [3, 6, 9],
  [1, 5, 9], [3, 5, 7]
]

board = {1=>"X", 2=>"X", 3=>" ", 4=>" ", 5=>"X", 6=>" ", 7=>" ", 8=>" ", 9=>" "}

def find_at_risk_square(line, board)
  if board.values_at(*line).count("X") == 2
    board.select{|k,v| line.include?(k) && v == " "}.keys.first
  else
    nil
  end
end

def computer_places_piece!(board)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, board)
    p line[1]
    break if square
  end

  if !square
    square = empty_squares(board).sample
  end

  board[square] = "O"
end

computer_places_piece!(board)
find_at_risk_square(WINNING_LINES, board)

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def valid_move?(board, index)
  if index.between?(0,8) && (position_taken?(board, index) == false)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] ==  "O"
    true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  num2 = input_to_index(num)
  if valid_move?(board, num2)
    move(board, num2)
  else
    turn(board)
  end
  display_board(board)
end

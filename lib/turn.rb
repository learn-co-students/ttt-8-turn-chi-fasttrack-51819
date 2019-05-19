def input_to_index(input)
  new_input = input.to_i
  new_input - 1
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


# code your #valid_move? method here
def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  indexed_input = input_to_index(user_input)
  if valid_move?(board, indexed_input)
  board[indexed_input] = "X"
  display_board(board)
else
  turn(board)
   end 
end




def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  new_input = input.to_i
  new_input - 1
end

def move (board, input, player_character = "X")
  board[input] = player_character
end




# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  index.to_i
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X"
    true
  elsif board[index] == "O"
    true
  end
  end
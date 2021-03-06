
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(input)
  index = "#{input}".to_i - 1
end

def position_taken?(board, index)
  if "#{board[index]}" == "" || "#{board[index]}" == " " || "#{board[index]}" == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if position_taken?(board, "#{index}".to_i) || !(("#{index}".to_i).between?(0, 8))
    return false
  else
    return true
  end
end
def turn(board)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  if valid_move?(board, "#{index}".to_i)
    move(board, "#{index}".to_i, "X")
    display_board(board)
  else
    puts "input again"
    index = input_to_index(gets.strip)

  end

end

def move(board, index, value)
  board[index] =value
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}"
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}"
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]}"
end

def valid_move?(board, index)
   if (position_taken?(board, index) == false) && (index.between?(0, 8))
      return true 
   elsif position_taken?(board, index) == true
     return false
   end
 end
		
		
def position_taken?(board, index)
   if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
     return false
   else 
     return true
   end
 end 

def move
  puts "Please enter 1-9:"
  move = gets.strip
    if valid_move?(board, move) == true
      board[move] = move
      display_board(board)
      move
    else 
      puts "That is not a valid response"
      move
    end
end

class Board
   attr_reader :board
   def initialize
    @board = %w[" ", " ", " ", " ", " ", " ", " ", " ", " "] 
    @win_criteria = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [6, 4, 2]
      ]
   end

   def display_board
    separator = "|"
    lines = "-----------"
    
    puts " #{@board[0]} #{separator} #{@board[1]} #{separator} #{@board[2]} "
    puts "#{lines}"
    puts " #{@board[3]} #{separator} #{@board[4]} #{separator} #{@board[5]} "
    puts "#{lines}"
    puts " #{@board[6]} #{separator} #{@board[7]} #{separator} #{@board[8]} "
   end

   def input_to_index(user_input)
      new_user_input = user_input.to_i
      new_user_input -= 1
      return new_user_input
   end
    
   def move(board, index, character = "X")
      board[index] = character
      return board
   end
    

   
end

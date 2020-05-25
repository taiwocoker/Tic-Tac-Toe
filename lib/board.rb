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
   
   def position_taken?(board, index)
      if board[index] == " " || board[index] == "" || board[index] == nil
        return false
      else
        return true
      end
   end

   def position_taken?(board, index)
      if board[index] == " " || board[index] == "" || board[index] == nil
        return false
      else
        return true
      end
    end
    def won?(board)
      win_criteria.each {|win_combo|
        index_0 = win_combo[0]
        index_1 = win_combo[1]
        index_2 = win_combo[2]
    
        position_1 = board[index_0]
        position_2 = board[index_1]
        position_3 = board[index_2]
    
        if position_1 == "X" && position_2 == "X" && position_3 == "X"
          return win_combo
        elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
          return win_combo
        end
      }
      return false
    end
    
    def full?(board)
      board.all? {|index| index == "X" || index == "O"}
    end
     
    


   
end

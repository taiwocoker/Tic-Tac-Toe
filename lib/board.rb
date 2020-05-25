class Board
   attr_reader :board

   def initialize
    @board = %w[
      _ _ _
      _ _ _
      _ _ _
    ]
 
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

   def update_board(position, value)
      @board[position.to_i - 1] = value
   end

    def won?
      @win_criteria.each do |x|
      one = x[0]
      two = x[1]
      three = x[2]
      return true if @board[one] == @board[two] && @board[one] == @board[three] && @board[one] != '_'
    end
    false
  end
    
    def full?
      @board.each do |x|
         return false if x == '_'
       end
       true
    end
     
end

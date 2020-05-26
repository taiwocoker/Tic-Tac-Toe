class Board
  attr_reader :board

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

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
    separator = '|'

    "\n| #{@board[0]} #{separator} #{@board[1]} #{separator} #{@board[2]} |
     \n| #{@board[3]} #{separator} #{@board[4]} #{separator} #{@board[5]} |
     \n| #{@board[6]} #{separator} #{@board[7]} #{separator} #{@board[8]} | "
  end

  def update_board(position, value)
    @board[position.to_i - 1] = value
  end

  def won?
    @win_criteria.each do |x|
      one = x[0]
      two = x[1]
      three = x[2]
      return true if @board[one] == @board[two] && @board[one] == @board[three]
    end
    false
  end

  def full?
    @board.each do |x|
      return false if x.is_a? Numeric
    end
    true
  end
end

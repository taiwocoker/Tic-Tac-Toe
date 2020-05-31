require_relative '../lib/board'

describe Board do
  let(:tictactoe) { Board.new }

  describe 'display_board' do
    it 'should display a board instance without any argument' do
    tictactoe
    end

    it 'should create @board with integer keys between 1 and 9' do
      board = tictactoe.board
      expect(board[5]).to eql(6)
      expect(board[10]).to eql(nil)
    end
  end

  describe 'update_board' do
    it 'should update position 1 with X' do
      tictactoe.update_board(1, 'X')
      expect(tictactoe.board[0]).to eq('X')
    end
  end

  describe 'won?' do
    it 'should return true if a player match 3 rows' do
      tictactoe.update_board(1, 'X')
      tictactoe.update_board(2, 'X')
      tictactoe.update_board(3, 'X')
      expect(tictactoe.won?).to eq(true)
    end

    it 'should return true if a player match 3 columns' do
      tictactoe.update_board(0, 'X')
      tictactoe.update_board(3, 'X')
      tictactoe.update_board(6, 'X')
      expect(tictactoe.won?).to eq(true)
    end

    it 'should return true if a player match 2 diagonals' do
      tictactoe.update_board(1, 'X')
      tictactoe.update_board(5, 'X')
      tictactoe.update_board(9, 'X')
      expect(tictactoe.won?).to eq(true)
    end

    it 'should return false if the game is a draw' do
      tictactoe.update_board(1, 'X')
      tictactoe.update_board(2, 'X')
      tictactoe.update_board(3, 'O')
      tictactoe.update_board(4, 'O')
      tictactoe.update_board(5, 'O')
      tictactoe.update_board(6, 'X')
      tictactoe.update_board(7, 'X')
      tictactoe.update_board(8, 'O')
      tictactoe.update_board(9, 'X')
      expect(tictactoe.won?).to eq(false)
    end
  end

  describe 'full?' do
    it 'should return true if the board is full' do
      tictactoe.update_board(1, 'X')
      tictactoe.update_board(2, 'X')
      tictactoe.update_board(3, 'O')
      tictactoe.update_board(4, 'O')
      tictactoe.update_board(5, 'O')
      tictactoe.update_board(6, 'X')
      tictactoe.update_board(7, 'X')
      tictactoe.update_board(8, 'O')
      tictactoe.update_board(9, 'X')
      expect(tictactoe.full?).to eq(true)
    end

    it 'should return false if the board is not full' do
      expect(tictactoe.full?).to eq(false)
    end
  end
end

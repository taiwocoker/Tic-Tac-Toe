require_relative '../lib/board'

describe Board do
  let(:tictactoe) { Board.new }
  describe '#display_board' do
    it 's' do
      board = tictactoe.board
      expect(board[0]).to eql(1)
      expect(board[13]).to eql(nil)
    end
  end
  describe '#update_board' do
    it 'should be able to update value with chosen position' do
      tictactoe.update_board(4, 'x')
      expect(tictactoe.board[3]).to eql('x')
    end
  end
  describe '#won?' do
    it 'should return true if either player matches the win criteria' do
      tictactoe.update_board(4, 'o')
      tictactoe.update_board(5, 'o')
      tictactoe.update_board(6, 'o')
      expect(tictactoe.won?).to eql(true)
    end
  end
  describe '#full?' do
    it 'returns false if the board is not full' do
      tictactoe.update_board(1, 'X')
      expect(tictactoe.full?).to eql(false)
    end
    it 'returns true if the board is full' do
      tictactoe.update_board(1, 'X')
      tictactoe.update_board(2, 'X')
      tictactoe.update_board(3, 'X')
      tictactoe.update_board(4, 'O')
      tictactoe.update_board(5, 'X')
      tictactoe.update_board(6, 'X')
      tictactoe.update_board(7, 'o')
      tictactoe.update_board(8, 'o')
      tictactoe.update_board(9, 'o')
      expect(tictactoe.full?).to eq(true)
    end

    it 'returns false when game is draw and no winner' do
      tictactoe.update_board(1, 'O')
      tictactoe.update_board(2, 'O')
      tictactoe.update_board(3, 'X')
      tictactoe.update_board(4, 'X')
      tictactoe.update_board(5, 'X')
      tictactoe.update_board(6, 'O')
      tictactoe.update_board(7, 'O')
      tictactoe.update_board(8, 'O')
      tictactoe.update_board(9, 'X')
      expect(tictactoe.won?).to eq(false)
    end
  end
end

require_relative '../lib/board'

describe Board do
  let(:tictactoe) { Board.new }
  describe '#display_board' do
    it 'should create and display a board' do
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
end

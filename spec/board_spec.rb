require './lib/board'

describe Board do
    let(:tictactoe) {Board.new}

    describe 'update_board' do
        it 'should update position 1 with X' do
            tictactoe.update_board(1, 'X')
            expect(tictactoe.board[0]).to eq('X')
        end
    end
end
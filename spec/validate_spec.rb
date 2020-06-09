require_relative '../lib/validate'
require_relative '../lib/board'
describe '#Validate' do
  let(:validation) { Validate.new }
  let(:board) { Board.new }
  describe '#valid_input' do
    it 'returns true if position is within valid options' do
        expect(validation.valid_input('5')).to eql(true)
    end
    it 'returns false if position is not within options' do 
    end
  end
end

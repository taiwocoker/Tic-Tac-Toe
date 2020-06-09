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
      expect(validation.valid_input(11)).to eql(false)
    end
    it 'returns false if input other than intergers is selected' do
      expect(validation.valid_input('Y')).to eql(false)
    end
    it 'returns false if position has been selected' do
        validation.update_selected_position('5')
        expect(validation.valid_input('5')).to eq(false)
    end
  end
end

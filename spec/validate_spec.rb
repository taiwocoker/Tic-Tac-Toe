require './lib/validate'
require './lib/board'

describe Validate do
  let(:validation) { Validate.new }
  let(:board) {Board.new}

  describe 'valid_input' do
    it 'should return true if a valid option is inputted' do
      expect(validation.valid_input('3')).to eq(true)
    end

    it 'should return false if an alphabet is inputted' do
      expect(validation.valid_input('A')).to eq(false)
    end

    it 'should return false if the number is out of range' do
      expect(validation.valid_input('57')).to eq(false)
    end

    it 'should return false the position selected has been selected earlier' do
      validation.update_selected_position('3')
      expect(validation.valid_input('3')).to eq(false)
    end
  end
end
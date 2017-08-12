require 'board'

describe Board do
  subject(:board) { described_class.new([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) }

  context 'when initialized' do

    it 'can be initialized with a grid' do
      expect { Board.new([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) }.not_to raise_error
    end

    it 'has a default grid with 3 rows' do
      expect(board.grid.size).to eq 3
    end
  end

  describe '#get_value_from_position' do

    it 'gets the value on certain position' do
      expect(board.get_value_from_position({line: 0, column: 2})).to eq 3
    end
  end

  describe '#set_value_in_position' do

    it 'sets a value in a specified position' do
      expect(board.set_value_in_position({line: 0, column: 2, value: 'X'})).to eq 'X'
    end
  end
end

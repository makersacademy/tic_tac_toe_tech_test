require 'board'

describe Board do
  subject(:board) { described_class.new([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) }
  subject(:board2) { described_class.new([[:X, :O, :X], [:X, :X, :O], [:O, :X, :O]]) }

  context 'when initialized' do
    it 'accepts a grid' do
      expect { Board.new([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) }.not_to raise_error
    end

    it 'has a default grid with 3 rows' do
      expect(board.grid.size).to eq 3
    end
  end

  describe '#get_value' do
    it 'gets the value on certain position' do
      expect(board.get_value(x: 0, y: 2)).to eq 3
    end
  end

  describe '#set_value' do
    it 'sets a value in a specified position' do
      board.set_value(position_label: 3, move: :X)
      expect(board.get_value(x: 0, y: 2)).to eq :X
    end
  end

  describe '#winning?' do

    it 'returns false if there are no winnign combinations' do
      expect(board.winning?).to eq false
    end

    it 'returns true is there is a winning combination with the same values' do
      board.set_value(position_label: 1, move: :X)
      board.set_value(position_label: 2, move: :X)
      board.set_value(position_label: 3, move: :X)
      expect(board.winning?).to eq true
    end
  end

  describe '#draw?' do

    it 'returns true if there is a draw' do
      expect(board2.draw?).to eq true
    end

    it 'returns false if there is not a draw' do
      board.set_value(position_label: 1, move: :X)
      board.set_value(position_label: 7, move: :O)
      board.set_value(position_label: 3, move: :X)
      expect(board.draw?).to eq false
    end
  end
end

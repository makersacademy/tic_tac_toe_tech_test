require 'game'

describe Game do

  let(:board) { double(grid: [[true, true, true], [true, true, true], [true, true, true]]) }
  let(:game) { described_class.new(board) }

  describe '#initialize' do
    it 'initializes with a board' do
      expect(game.board).to_not eq(nil)
    end
  end
end

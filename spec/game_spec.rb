require 'game'

describe Game do

  let(:board) { double(grid: [[true, true, true], [true, true, true], [true, true, true]]) }
  let(:player1) { double(symbol: :x) }
  let(:player2) { double(symbol: :o) }
  let(:game) { described_class.new(board, player1, player2) }

  describe '#initialize' do
    it 'initializes with a board' do
      expect(game.board).to_not eq(nil)
    end

    it 'initializes with players' do
      expect(game.player1).to eq(player1)
      expect(game.player2).to eq(player2)
    end

    it 'player1 starts as the current player' do
      expect(game.current_player).to eq(player1)
    end
  end
end

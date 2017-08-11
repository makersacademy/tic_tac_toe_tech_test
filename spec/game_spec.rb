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

  describe '#make_move' do
    it 'allows a player to make a move' do
      allow(player1).to receive(:choose_space).with(1, 1)
      allow(board).to receive(:print)
      game.make_move(1, 1)
      expect(game.board.grid[1][1]).to eq(:x)
    end

    it 'switches the current player after a move' do
      allow(player1).to receive(:choose_space).with(1, 1)
      allow(board).to receive(:print)
      game.make_move(1, 1)
      expect(game.current_player).to eq(player2)
    end

    it 'allows players to take alternate turns' do
      allow(player1).to receive(:choose_space).with(1, 1)
      allow(player2).to receive(:choose_space).with(2, 2)
      allow(board).to receive(:print)
      game.make_move(1, 1)
      game.make_move(2, 2)
      expect(game.board.grid[2][2]).to eq(:o)
    end
  end
end

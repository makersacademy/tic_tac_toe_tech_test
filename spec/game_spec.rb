require 'game'

describe Game do
  let(:player1) { double(name: :Bob, weapon: :X) }
  let(:player2) { double(name: :Mike, weapon: :O) }
  grid = [%w[_ _ _], %w[_ _ _], %w[_ _ _]]
  let(:board) { double(grid: grid) }

  subject(:game) { described_class.new(player1, player2, board) }

  context '#initialized' do
    it 'accepts a board' do
      game.print_board
      expect(game.board).to eq board
    end

    it 'accepts a player1' do
      expect(game.player1).to eq player1
    end

    it 'accepts a player2' do
      expect(game.player2).to eq player2
    end
  end

  it 'prints the board' do
    expect(game).to respond_to(:print_board)
  end
end

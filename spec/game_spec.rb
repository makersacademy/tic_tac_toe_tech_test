require 'game'

describe Game do
  let(:player1) { double :player, name: :Bob, move: :X }
  let(:player2) { double :player, name: :Mike, move: :O }
  grid = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  let(:board) { double :board, grid: grid }

  subject(:game) { described_class.new(player1, player2, board) }

  context '#initialized' do
    
    it 'accepts a board' do
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

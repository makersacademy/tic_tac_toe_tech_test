require 'player_o'

describe PlayerO do

  let(:game) { double :game, board: Board.new }
  subject(:player_o) { described_class.new(game.board) }
  let(:player_x) { described_class.new(game.board) }

  describe '#initialize' do
    it 'has a given name of PlayerO' do
      expect(player_o.name).to eq 'PlayerO'
    end

    it "is given the initialized board from the game" do
      expect(player_o.board).to eq game.board
    end
  end

  describe '#move' do
    it 'adds PlayerO\'s move on the board' do
      expect(player_o.move(1,1)).to eq 'O'
    end

    it 'throws an error if the position is already taken' do
      player_x.move(1,1)
      expect { player_o.move(1,1) }.to raise_error 'This position is already taken'
    end
  end
end

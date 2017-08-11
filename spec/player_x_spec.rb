require 'player_x'

describe PlayerX do

  let(:game) { double :game, board: Board.new }
  subject(:player_x) { described_class.new(game.board) }

  describe '#initialize' do
    it 'has a given name of PlayerX' do
      expect(player_x.name).to eq 'PlayerX'
    end

    it "is given the initialized board from the game" do
      expect(player_x.board).to eq game.board
    end
  end

  describe '#move' do
    it 'adds PlayerX\'s move on the board' do
      expect(player_x.move(1,1)).to eq 'X'
    end
  end
end



describe Game do

  let(:player_one) { double("PlayerOne") }
  let(:board) { double("Board") }
  subject(:game) { described_class.new(player_one, board) }

  describe "attributes" do
    context "on init" do

      it "will hold a board instance" do
        expect(game.board).to be(board)
      end

      it "will hold a player instance" do
        expect(game.player_one).to be(player_one)
      end

    end
  end

end

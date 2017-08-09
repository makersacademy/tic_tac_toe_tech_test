

describe Game do

  let(:player_one) { double("PlayerOne", pick_cell: "top one", token: "X") }
  let(:board) { double("Board", display: nil, fill_cell_at: nil) }
  let(:rules) { double("Rules", all_cell_pick_checks: nil) }
  subject(:game) { described_class.new(player_one, board, rules) }

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

  describe "#one_whole_game" do
    # return
  end

  describe "#one_whole_turn" do

    it "will invoke display on board" do
      expect(board).to receive(:display)
      game.one_whole_turn
    end

    it "will invoke pick cell on player" do
      expect(player_one).to receive(:pick_cell)
      game.one_whole_turn
    end

    it "will invoke cell_checks on rules" do
      expect(rules).to receive(:all_cell_pick_checks)
      game.one_whole_turn
    end

    it "will invoke fill_cell_at on board" do
      expect(board).to receive(:fill_cell_at)
      game.one_whole_turn
    end

  end


end

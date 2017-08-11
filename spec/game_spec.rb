

describe Game do

  let(:parser) { double('Parser') }
  let(:player_one) { double("PlayerOne", token: "X")}
  let(:player_two) { double("PlayerTwo", token: "Y")}


  let(:board) { double('Board') }
  let(:rules) { double('Rules') }

  subject(:game) { described_class.new(Player, board, rules) }

  before do
    allow(Player).to receive(:create_one).and_return(player_one)
    allow(Player).to receive(:create_two).and_return(player_two)
  end

  describe "#player_one" do
    it "will return player1" do
      expect(game.player_one).to eq(player_one)
    end
  end

  describe "#player_two" do
    it "will return player2" do
      expect(game.player_two).to eq(player_two)
    end
  end

  describe "#current_player" do

    context "when current_player is p1" do

    it "will return the current_player" do
      expect(game.current_player).to eq(player_one)
    end

    end

    context "when current_player is p2" do

      before do
        game.current_player=(player_two)
      end

    it "will return the current_player" do
      expect(game.current_player).to eq(player_two)
    end

    end

  end


  describe "#switch_player" do

    context "when current player is p1" do

      xit "will set current player as p2" do
        game.switch_player
        expect(game.current_player.token).to eq("Y")
      end

    end

    context "when current player is p2" do

      xit "will set current player as p1" do
        game.switch_player
        expect(game.current_player.token).to eq("X")
      end

    end

  end


end

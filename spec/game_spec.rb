require 'game.rb'

describe Game do

  let(:player1) { double(:player, name: "jini") }
  let(:player2) { double(:player, name: "andrew") }
  let(:board_1) { double(:board) }
  subject(:game) { described_class.new(board_1, player1, player2) }

  describe '#attributes' do
    it "initializes with a new board" do
      expect(game.board).to eq(board_1)
    end

    it "initializes with a player 1" do
      expect(game.player_1).to eq(player1)
    end

    it "initializes with a player 2" do
      expect(game.player_2).to eq(player2)
    end

    it "initializes with a starting turn" do
      expect(game.turn).to eq('X')
    end
  end

  xdescribe '#start' do
    it "sets up the board" do
      # allow(player1).to receive(:value).and_return('X')
      # allow(player2).to receive(:value).and_return('O')
      allow(board_1).to receive(:create_board).and_return([["1", "2", "3"],
                                                           ["4", "5", "6"],
                                                           ["7", "8", "9"]])
      expect { game.start }.to output("[\"1\", \"2\", \"3\"]\n[\"4\", \"5\", \"6\"]\n[\"7\", \"8\", \"9\"]\n").to_stdout
    end
  end

  xdescribe '#make_choice' do
    it "plays the player's choice" do
      allow(board_1).to receive(:change_turn).and_return('O')
      expect(game.switch_turn).to eq('O')
    end
  end
end

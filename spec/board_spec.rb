require 'board'

describe Board do
  subject(:board) { described_class.new }

  describe "#initialize" do
    it "generates an empty grid" do
      expect(board.grid).to eq [["-", "-", "-"], ["-", "-", "-"], ["-", "-", "-"]]
    end
  end
end

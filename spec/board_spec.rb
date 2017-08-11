require 'board'

describe Board do
  subject(:board) { described_class.new }

  describe "#initialize" do
    it "generates an empty grid" do
      expect(board.grid).to eq [["*", "1", "2", "3"], ["1", "-", "-", "-"], ["2", "-", "-", "-"], ["3", "-", "-", "-"]]
    end
  end
end

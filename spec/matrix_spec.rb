
describe MyMatrix do

  subject(:dummy_class) { Class.new.include(described_class).new }

  let(:left_dia) { double("board", grid: [[['X'], [], []],
                   [[], ['X'], []],
                   [[], [], ['X']]]) }

  describe "#get_diagonal_of" do

    it "will return the natural diagonal of my grid" do
      expect(dummy_class.get_diagonal_of(left_dia)).to eq([["X"],["X"], ["X"]])
    end

  end

end

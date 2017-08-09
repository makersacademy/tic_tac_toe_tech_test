
describe Rules do

  subject(:rules) { described_class.new }

  describe "attributes" do
  end

  describe "#check_valid_cell" do

    let(:valid_cell) { "top one" }
    let(:invalid_cell) { "top four" }

    context "when user input maps to a grid square" do

      it "will return true" do
        expect(rules.valid_cell?(valid_cell)).to be nil
      end

      it "will return false" do
        expect{rules.valid_cell?(invalid_cell)}.to raise_error("That's not a valid cell")
      end

    end


  end

  describe "#all_cell_pick_checks" do

  end



end

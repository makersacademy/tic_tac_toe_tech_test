
describe Parser do

  subject(:parser) { described_class.new }

  describe "attributes" do
  end

  describe "#hasify" do
    let(:choice) { "top one" }
    it "hashs the user's cell choice by row and cell values" do
      expect(parser.hashify_(choice)).to eq({row: 'top', cell_num: 'one'})
    end
  end

end

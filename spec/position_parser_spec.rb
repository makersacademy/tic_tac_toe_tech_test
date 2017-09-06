
describe Parser do
  subject(:parser) { described_class.new }

  describe '#map_cell_to_index' do
    let(:choice) { 'top one' }
    it "returns the index of the user's cell choice" do
      expect(parser.map_choice_to_grid(choice)).to eq([0, 0])
    end
  end
end

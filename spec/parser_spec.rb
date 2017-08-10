
describe Parser do
  subject(:parser) { described_class.new }

  describe 'attributes' do
  end

  describe '#map_cell_to_index' do
    let(:choice) { 'top one' }
    it "puts the position of the user's cell choice into an array" do
      expect(parser.map_cell_to_index(choice)).to eq([0, 0])
    end
  end
end

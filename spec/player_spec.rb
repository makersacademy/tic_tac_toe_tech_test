
describe Player do

  let(:token) { 'X' }
  subject(:player) { described_class.create(token) }

  describe "attributes" do
    it "will have X for a token" do
      expect(player.token).to eq("X")
    end
  end

end

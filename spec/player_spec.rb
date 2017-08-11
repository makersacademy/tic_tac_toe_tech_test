require 'player.rb'

describe Player do

  subject(:player_1) { described_class.new("jini") }

  describe '#attributes' do
    it "initializes with a name" do
      expect(player_1.name).to eq("jini")
    end

    it "initializes with a value of nil" do
      expect(player_1.value).to eq(nil)
    end
  end
end

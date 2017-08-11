require 'player.rb'

describe Player do

  subject(:player1) { described_class.new("jini", "X") }

  describe '#attributes' do
    it "initializes with a name" do
      expect(player1.name).to eq("jini")
    end

    it "initializes with a value" do
      expect(player1.value).to eq("X")
    end
  end
end

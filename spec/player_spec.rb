require 'player'

describe Player do
  let(:player1) { described_class.new(:x) }

  describe '#initialize' do
    it 'initializes with a symbol' do
      expect(player1.symbol).to eq(:x)
    end
  end
end

require 'player'

describe Player do
  subject(:player) { described_class.new(:Bob, :X) }

  context 'when initialized' do
    it 'accepts a name and a move' do
      expect { Player.new(:Bob, :X) }.not_to raise_error
    end

    it 'has a name' do
      expect(player.name).to eq :Bob
    end

    it 'has a move' do
      expect(player.move).to eq :X
    end
  end
end

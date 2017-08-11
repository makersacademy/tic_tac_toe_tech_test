describe Player do

  let (:player) { Player.new }

  describe '#initialise' do
    it 'initialises default player names' do
      expect(player.name).to eq 'Player X'
    end

    it 'initialises default player tag' do
      expect(player.tag).to eq 'X'
    end
  end
end

# spec/player_spec.rb
require 'player'

describe Player do
  describe('#initialize') do
    let(:player) { described_class.new('X') }
    context 'when the player choice is X' do
      it 'initializes a new player as player X' do
        expect(player.choice).to eq 'X'
      end

      it 'does not initialize a new player as player O' do
        expect(player.choice).to_not eq 'O'
      end
    end
  end

  describe('#initialize') do
    let(:player) { described_class.new('O') }
    context 'when the player choice is O' do
      it 'initializes a new player as player O' do
        expect(player.choice).to eq 'O'
      end

      it 'does not initialize a new player as player X' do
        expect(player.choice).to_not eq 'X'
      end
    end
  end
end

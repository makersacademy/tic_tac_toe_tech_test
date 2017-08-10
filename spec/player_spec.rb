
describe Player do
  let(:token) { 'X' }

  subject(:player) { described_class.new(token) }

  describe 'attributes' do
    context 'on init' do
      it 'will the token passed in' do
        expect(player.token).to eq('X')
      end
    end
  end
end

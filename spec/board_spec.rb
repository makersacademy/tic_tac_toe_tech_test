
describe Board do
  subject(:board) { described_class.new }

  describe '#display' do
    it 'prints the grid to stdout' do
      expect { board.display }.to output("| | | |\n| | | |\n| | | |\n").to_stdout
    end
  end

  describe '#fill_at' do
    let(:index) { [0, 0] }
    let(:player) { double(:Player, token: 'X') }
    it "will insert the player's token into the specified cell" do
      board.fill_at(index, player)
      expect(board.grid[0][0]).to eq(player.token)
    end
  end
end

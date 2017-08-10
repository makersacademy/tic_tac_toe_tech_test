
describe Board do
  subject(:board) { described_class.new }

  describe 'attributes' do
    it { is_expected.to respond_to(:grid) }
  end

  describe '#display' do
    xit 'print the grid to stdout' do
      # return to output correctly when you know grid format
      expect { board.display }.to output('x').to_stdout
    end
  end

  describe '#fill_cell_at' do
    let(:index) { [0, 0] }
    let(:player) { double('Player', token: 'X') }

    it "will insert the player's token into the specified cell" do
      board.fill_cell_at(index, player)
      expect(board.grid[0][0]).to eq([player.token])
    end
  end
end

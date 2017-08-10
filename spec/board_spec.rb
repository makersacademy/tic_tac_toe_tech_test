require 'board'

describe Board do
  let(:grid) { [["","",""],["","",""],["","",""]] }
  let(:board) { described_class.new() }

  describe '#createGrid' do
    context 'when creating a new board' do
      before do
        subject { described_class.createGrid(grid) }
      end

      it 'initializes with a new empty grid' do
        expect(board.grid).to eq [["","",""],["","",""],["","",""]]
      end

      it 'creates the grid' do
        expect(board.createGrid(grid)).to eq [["","",""],["","",""],["","",""]]
      end
    end
  end

  describe '#printGrid' do
    context 'printing a grid for the user to see' do

      it 'prints a 3 x 3 grid to the console' do
        expect(board.printGrid(grid)).to eq [["","",""],["","",""],["","",""]]
      end
    end
  end
end

# spec/board_spec.rb
require 'board'

describe Board do
  let(:grid) { [['?', '?', '?'], ['?', '?', '?'], ['?', '?', '?']] }
  let(:board) { described_class.new }

  describe '#initialize' do
    context 'creating a new board on initialization' do
      it 'initializes with a new empty grid' do
        expect(board.grid).to eq [['?', '?', '?'], ['?', '?', '?'], ['?', '?', '?']]
      end
    end
  end

  describe '#print_grid' do
    context 'printing a grid for the user to see' do
      it 'prints a 3 x 3 grid to the console' do
        expect(board.print_grid).to eq [['?', '?', '?'], ['?', '?', '?'], ['?', '?', '?']]
        expect { board.print_grid }.to output.to_stdout
      end
    end
  end

  describe '#get_cell' do
    context 'allocating a specific cell position in the grid' do
      before do
        allow(board).to receive(:grid).and_return([['X', '?', '?'], ['?', '?', '?'], ['?', '?', '?']])
      end
      it 'returns the cell that is called' do
        grid = [['X', '?', '?'], ['?', '?', '?'], ['?', '?', '?']]
        expect(board.get_cell(0, 0)).to eq 'X'
      end
    end
  end
end

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

  describe '#get_cell_value' do
    context 'allocating a specific cell position in the grid' do
      it 'returns the cell that is called' do
        grid = [['?', '?', '?'], ['?', '?', '?'], ['?', '?', '?']]
        expect(board.get_cell(0, 0)).to eq '?'
      end
    end
  end

  describe '#set_cell_value' do
    context 'receives the cell co-ordinates and sets a value it' do
      it 'sets a value of X to the specified cell' do
        board.get_cell(0, 0)
        board.set_cell(0, 0, 'X')
        expect(board.print_grid).to eq [['X', '?', '?'], ['?', '?', '?'], ['?', '?', '?']]
      end

      it 'sets a value of O to the specified cell' do
        board.get_cell(1, 1)
        board.set_cell(1, 1 ,'O')
        expect(board.print_grid).to eq [['?', '?', '?'], ['?', 'O', '?'],['?', '?', '?']]
      end

      it 'sets a value of X and O to the specified cells' do
        board.get_cell(0, 2)
        board.set_cell(0, 2, 'X')
        board.get_cell(0, 1)
        board.set_cell(0, 1, 'O')
        expect(board.print_grid).to eq [['?', '?', '?'], ['O', '?', '?'], ['X', '?', '?']]
      end
    end
  end
end

describe Board do

  let (:board) { Board.new }

  describe '#initialise' do
    it 'initialises with an array grid' do
      expect(board.grid).to be_an_instance_of Array
    end

    it 'initialises with cells in the grid' do
      expect(board.grid[0][0].class).to eq Cell
    end
  end

  describe '#set_cell' do
    it 'can set a cell value to X' do
      board.set_cell(0, 0, 'X')
      expect(board.grid[0][0].value).to eq 'X'
    end

    it 'can set a cell value to O' do
      board.set_cell(0, 1, 'O')
      expect(board.grid[0][1].value).to eq 'O'
    end

    it 'raises an error if cell is already taken' do
      board.set_cell(0, 0, 'X')
      expect { board.set_cell(0, 0, 'O') }.to raise_error 'Cell taken by X'
    end
  end

  describe '#print_grid' do
    it 'can print board grid' do
      board.set_cell(0, 0, 'X')
      expect{ board.print_grid }.to output("X - -\n- - -\n- - -\n").to_stdout
    end
  end
end

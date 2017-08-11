require 'board'

describe Board do
  board = Board.new()

  it 'can be initialized with a grid' do
    expect { Board.new({grid: {}})}.not_to raise_error
  end

  it 'has a default grid with 3 rows' do
    expect(board.grid.size).to eq 3
  end

end

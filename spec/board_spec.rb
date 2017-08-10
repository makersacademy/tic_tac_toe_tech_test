require 'board'

describe Board do
  input = { grid: [%w[_ _ _], %w[_ _ _], %w[_ _ _]] }
  board = Board.new(input)

  it 'is initialized with a grid' do
    expect(board.grid).to eq input[:grid]
  end
end

require_relative 'game'
require_relative 'board'

class PlayerO

  attr_reader :name, :board

  def initialize(board)
    @name = 'PlayerO'
    @board = board
  end

  def move(a,b)
    raise 'This position is already taken' unless @board.grid[a][b] == '-'
    @board.grid[a][b] = "O"
  end
end

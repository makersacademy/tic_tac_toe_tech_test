class Board
  attr_reader :grid

  def initialize(grid = [[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    @grid = grid
  end

  def get_value_from_position(position)
    x = position.fetch(:line)
    y = position.fetch(:column)
    @grid[x][y]
  end

  def set_value_in_position(argument)
    x = argument.fetch(:line)
    y = argument.fetch(:column)
    value = argument.fetch(:value)
    @grid[x][y] = value
  end
end

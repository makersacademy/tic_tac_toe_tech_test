class Board
  attr_reader :grid


  def initialize(grid = [[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    @grid = grid
  end

  def get_value(position)
    line = position.fetch(:x)
    column = position.fetch(:y)
    @grid[line][column]
  end

  def set_value(argument)
    position = value_to_coordinates(argument.fetch(:position_label))
    line = position[0]
    column = position[1]
    @grid[line][column] = argument.fetch(:move)
  end

  def winning_combinations
    @grid + @grid.transpose + diagonals
  end

  def diagonals
    [
    [get_value({x:0, y:0}), get_value({x:1, y:1}),  get_value({x:2, y:2})],
    [get_value({x:0, y:2}), get_value({x:1, y:1}),  get_value({x:2, y:0})]
    ]
  end

private
  def value_to_coordinates(position_label)
    correspondence = {
      1 => [0, 0],
      2 => [0, 1],
      3 => [0, 2],
      4 => [1, 0],
      5 => [1, 0],
      6 => [1, 2],
      7 => [2, 0],
      8 => [2, 1],
      9 => [2, 2]
    }
    correspondence[Integer(position_label)]
  end

end

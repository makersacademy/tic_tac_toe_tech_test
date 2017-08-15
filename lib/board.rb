class Board
  attr_reader :grid

  def initialize(grid = [[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    @grid = grid
  end

  def get_value(position)
    line, column = get_line_column(position)
    @grid[line][column]
  end

  def get_line_column(position)
    line = position[0]
    column = position[1]
    return line, column
  end

  def set_value(argument)
    position = value_to_coordinates(argument.fetch(:position_label))
    validate_move(position)
    line, column = get_line_column(position)
    @grid[line][column] = argument.fetch(:move)
  end

  def winning?
    winning_combinations.each do |combination|
      return true if same_values?(combination)
    end
    false
  end

  def draw?
    move_counter == 9 && !winning?
  end

  private

  def validate_position(position_label)
    raise ArgumentError, "Invalid position. Try again." unless (1..9).include?(position_label.to_i)
  end

  def validate_move(position)
    raise ArgumentError, "Invalid move, position already taken. Try again." unless (1..9).include?(get_value(position))
  end

  def value_to_coordinates(position_label)
    correspondence = {
      1 => [0, 0],
      2 => [0, 1],
      3 => [0, 2],
      4 => [1, 0],
      5 => [1, 1],
      6 => [1, 2],
      7 => [2, 0],
      8 => [2, 1],
      9 => [2, 2]
    }
    validate_position(position_label)
    correspondence[Integer(position_label)]
  end

  def winning_combinations
    @grid + @grid.transpose + diagonals
  end

  def same_values?(array)
    array.all? { |value| value == array[0] }
  end

  def diagonals
    [
      [get_value([0, 0]), get_value([1, 1]), get_value([2, 2])],
      [get_value([0, 2]), get_value([1, 1]), get_value([2, 0])]
    ]
  end

  def move_counter
    @grid.flatten.count { |move| move == :X || move == :O }
  end
end

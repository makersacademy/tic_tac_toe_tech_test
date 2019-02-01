# Understands how to make a natural statement of a board position formal

class PositionParser
  ROW = 0
  COL = 1

  def initialize
    @grid_index = { top: 0, mid: 1, low: 2, one: 0, two: 1, three: 2 }
  end

  def map_choice_to_grid(choice)
    row = get_row_from(choice)
    col = get_col_from(choice)
    [get_grid_index(row), get_grid_index(col)]
  end

  private

  attr_reader :grid_index

  def get_row_from(choice)
    choice.strip.split(' ')[ROW].to_sym
  end

  def get_col_from(choice)
    choice.strip.split(' ')[COL].to_sym
  end

  def get_grid_index(choice)
    grid_index[choice]
  end
end

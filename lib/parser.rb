
class Parser
  attr_reader :map

  def initialize
    @map = { 'top' => 0, 'mid' => 1, 'low' => 2, 'one' => 0, 'two' => 1, 'three' => 2 }
  end

  def map_cell_to_index(choice)
    row = get_row_from(choice)
    col = get_col_from(choice)
    [] << produce_grid_index(row) << produce_grid_index(col)
  end

  private

  def get_row_from(choice)
    choice.strip.split(' ')[0]
  end

  def get_col_from(choice)
    choice.strip.split(' ')[1]
  end

  def produce_grid_index(choice)
    map[choice]
  end
end

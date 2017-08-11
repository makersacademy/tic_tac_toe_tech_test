class Board
  attr_reader :grid
  def initialize(input = {})
    @grid = input.fetch(:grid, default_grid)
  end



  private
  def default_grid
    [[1, 2, 3],[4, 5 ,6],[7, 8, 9]]
  end
end

class Board
  attr_reader :grid
  def initialize(input = {})
    @grid = input.fetch(:grid, default_grid)
  end

  private

  def default_grid
    Array.new(3) { Array.new(3) { '_' } }
  end
end

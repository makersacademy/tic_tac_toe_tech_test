require_relative 'cell.rb'

class Board

  attr_reader :grid

  def initialize
    @grid = create_grid
  end

  def set_cell(x, y, value)
    if grid[x][y].value != ""
      raise "Cell taken by #{grid[x][y].value}"
    else
      get_cell(x,y).value = value
    end
    print_grid
  end

  def print_grid
    grid.each do |array|
      puts array.map { |cell| cell.value.empty? ? "-" : cell.value }.join(" ")
    end
  end

  private

  def create_grid
    Array.new(3) { Array.new(3) { Cell.new } }
  end

  def get_cell(x, y)
    grid[x][y]
  end
end

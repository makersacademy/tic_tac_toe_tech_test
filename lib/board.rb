# lib/board.rb
class Board
  attr_reader :grid

  def initialize
    @grid = [['?', '?', '?'],
             ['?', '?', '?'],
             ['?', '?', '?']]
  end

  def print_grid
    @grid.each do |row|
      puts row.join(' ')
    end
  end

  def get_cell(x, y)
    grid[y][x]
  end
end

# Understands how to represent a board for tic-tac-toe

class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(3) { Array.new(3) { :" " } }
  end

  def fill_at(index, player)
    grid[index[Parser::ROW_POSITION]][index[Parser::COL_POSITION]] = player.token
  end

  def display
    puts "|#{grid[0][0]}" + "|#{grid[0][1]}" + "|#{grid[0][2]}|"
    puts "|#{grid[1][0]}" + "|#{grid[1][1]}" + "|#{grid[1][2]}|"
    puts "|#{grid[2][0]}" + "|#{grid[2][1]}" + "|#{grid[2][2]}|"
  end
end

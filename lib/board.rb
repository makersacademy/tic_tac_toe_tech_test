class Board
  attr_reader :grid

  def initialize
    @grid = create
  end

  def print
    puts "|#{@grid[0][0]}|" + "#{@grid[0][1]}|" + "#{@grid[0][2]}|"
    puts "|#{@grid[1][0]}|" + "#{@grid[1][1]}|" + "#{@grid[1][2]}|"
    puts "|#{@grid[2][0]}|" + "#{@grid[2][1]}|" + "#{@grid[2][2]}|"
  end

  def space_is_free?(row, column)
    @grid[row][column] == "-"
  end

  private

  def create
    [["-", "-", "-"],
     ["-", "-", "-"],
     ["-", "-", "-"]]
  end
end

class Board
  attr_reader :grid

  def initialize
    @grid = create
  end

  def print
    puts "#{@grid[0]}"
    puts "#{@grid[1]}"
    puts "#{@grid[2]}"
  end

  def space_is_free?(row, column)
    @grid[row][column] == true
  end

  private

  def create
    [[true, true, true],
    [true, true, true],
    [true, true, true]]
  end
end

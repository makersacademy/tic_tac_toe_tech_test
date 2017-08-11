class Board
  attr_reader :grid

  def initialize
    @grid = create
  end

  def create
    [[true, true, true],
    [true, true, true],
    [true, true, true]]
  end

  def print
    puts "#{@grid[0]}"
    puts "#{@grid[1]}"
    puts "#{@grid[2]}"
  end
end

class Board
  attr_reader :grid

  ROW_LENGTH = 3
  COLUMN_LENGTH = 3
  ROWS = [[0, 1, 2], [3, 4, 5], [2, 5, 8]]
  COLUMNS = [[0, 3, 6], [3, 4, 5], [6, 7, 8]]

  def initialize
    @grid = create
  end

  def print
    puts "|#{@grid[0]}|" + "#{@grid[1]}|" + "#{@grid[2]}|"
    puts "|#{@grid[3]}|" + "#{@grid[4]}|" + "#{@grid[5]}|"
    puts "|#{@grid[6]}|" + "#{@grid[7]}|" + "#{@grid[8]}|"
  end

  def space_is_free?(space)
    @grid[space] == '-'
  end

  def winning_move?
    verticle_win? || horizontal_win? || diagonal_win?
  end

  private

  def create(n = ROW_LENGTH*COLUMN_LENGTH, val = '-')
    Array.new(n, val)
  end

  def verticle_win?
    check_elements_are_equal(@grid[0], @grid[3], @grid[6]) || check_elements_are_equal(@grid[1], @grid[4], @grid[7]) || check_elements_are_equal(@grid[2], @grid[5], @grid[8])
  end

  def horizontal_win?
    check_elements_are_equal(@grid[3], @grid[4], @grid[5]) || check_elements_are_equal(@grid[0], @grid[1], @grid[2]) || check_elements_are_equal(@grid[6], @grid[7], @grid[8])
  end

  def diagonal_win?
    check_elements_are_equal(@grid[0], @grid[4], @grid[8]) || check_elements_are_equal(@grid[2], @grid[4], @grid[6])
  end

  def check_elements_are_equal(a, b, c)
    a == b && b == c && a != '-'
  end

end

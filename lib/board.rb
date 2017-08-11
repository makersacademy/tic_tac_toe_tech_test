class Board

  SQUARE_LOCATION = {1 => [0,0], 2 => [0,1], 3 => [0,2],
                     4 => [1,0], 5 => [1,1], 6 => [1,2],
                     7 => [2,0], 8 => [2,1], 9 => [2,2]}

  attr_reader :board

  def initialize
    @board = board
  end

  def create_board
    @board = [[1,2,3],
              [4,5,6],
              [7,8,9]]
  end

  def print_board
    board = @board.map { |x| x.inspect}.join("\n")
    puts board
  end

  def play_square(number)
    find_location(number)
    print_board
  end

  private

  def find_location(number)
    location = SQUARE_LOCATION[number]
    replace_square(location)
  end

  def replace_square(location)
    @board[location[0]][location[1]] = 'X'
  end
end

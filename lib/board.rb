class Board

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
end

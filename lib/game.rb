class Game

  attr_reader :board

  def initialize(board = Board.new)
   @board = board
  end

  def show_board
    @board.grid.each do |cell|
      puts cell.join(" ")
    end
  end
end

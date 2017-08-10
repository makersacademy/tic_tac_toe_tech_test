require_relative 'board.rb'

class Game
  attr_reader :board

  def initialize
    @board = Board.new
  end
end

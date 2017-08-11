require_relative 'board'
require_relative 'player'

class Game
  attr_reader :board, :player1, :player2, :current_player

  def initialize(board = Board.new, player1 = Player.new(:x), player2 = Player.new(:o) )
    @board = board
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

end

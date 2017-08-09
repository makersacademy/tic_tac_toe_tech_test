
require_relative "player"
require_relative "board"

class Game

  attr_reader :board, :player_one

  def initialize(player = Player.new, board = Board.new)
    @board = board
    @player_one = player
    @current_player = player
  end


end

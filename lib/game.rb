require_relative 'board'
require_relative 'player'

class Game
  attr_reader :board, :players, :current_player

  def initialize(board = Board.new, player1 = Player.new(:x), player2 = Player.new(:o))
    @board = board
    @players = [player1, player2]
    @current_player = player1
  end

  def make_move(row, column)
    raise 'Space taken!' unless @board.space_is_free?(row, column)
    @board.grid[row][column] = @current_player.symbol
    switch_current_player
    @board.print
  end

  private

  def switch_current_player
    @current_player = @players.find { |player| player != @current_player }
  end
end

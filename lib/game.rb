require_relative 'board'
require_relative 'player'

class Game
  attr_reader :board, :players, :current_player

  def initialize(board = Board.new, player1 = Player.new(:x), player2 = Player.new(:o))
    @board = board
    @players = [player1, player2]
    @current_player = player1
  end

  def make_move(space)
    raise 'Space taken!' unless @board.space_is_free?(space)
    @board.grid[space] = @current_player.symbol
    @board.winning_move? ? win_scenario : non_win_scenario
  end

  private

  def switch_current_player
    @current_player = @players.find { |player| player != @current_player }
  end

  def win_message
    puts 'Win!'
  end

  def win_scenario
    win_message
    @board.print
  end

  def non_win_scenario
    switch_current_player
    @board.print
  end
end

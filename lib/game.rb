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

  def make_move(row, column)
    @board.grid[row][column] = @current_player.symbol
    switch_current_player
    @board.print
  end

  private

  def switch_current_player
    @current_player == @player1 ? @current_player = @player2 : @current_player = @player2
  end

end

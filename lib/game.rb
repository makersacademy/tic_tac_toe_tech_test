require 'player'
require 'board'

class Game
  attr_reader :player1, :player2, :board
  def initialize(player1 = Player.new, player2 = Player.new, board = Board.new)
    @player1 = player1
    @player2 = player2
    @board = board
  end

  def print_board
    @board.grid.each do |line|
      puts line.join(' | ')
    end
  end
end

require_relative 'player'
require_relative 'board'

class Game
  attr_reader :player1, :player2, :board, :current_move, :current_player

  def initialize(arguments)
    @player1 = arguments.fetch(:player1)
    @player2 = arguments.fetch(:player2)
    @board = arguments.fetch(:board)
    decide_first_player
  end

  def print_board
    @board.grid.each do |line|
      puts line.join(' | ')
    end
  end

  def get_input
    puts "Please choose the next position for your move:"
    @current_move = gets.chomp
  end

  def make_move
    get_input
    @board.set_value_in_position({position_label: @current_move, move: @current_player.move})
  end

private
  def switch_players
    @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
  end

  def decide_first_player
    @current_player = [@player1, @player2].sample
  end

end

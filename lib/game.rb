
require_relative "player"
require_relative "board"
require_relative "rules"
require_relative "parser"

class Game

  attr_reader :board, :player_one, :current_player, :rules, :parser

  def initialize(player = Player.new("X"), board = Board.new, rules = Rules.new)
    @board = board
    @rules = rules
    @player_one = player
    @current_player = player
    @parser = Parser.new
  end

  def one_whole_game
  end

  # Not sure whether this violates SRP

  def process_choice
    choice = current_player.pick_cell
    rules.all_cell_pick_checks(choice)
    parser.hashify_(choice)
  end

  def one_whole_turn
    board.display
    position = process_choice
    board.fill_cell_at(position, current_player)
  end


end

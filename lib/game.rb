
require_relative "player"
require_relative "board"
require_relative "rules"

class Game

  attr_reader :board, :player_one, :current_player, :rules

  def initialize(player = Player.new("X"), board = Board.new, rules = Rules.new)
    @board = board
    @rules = rules
    @player_one = player
    @current_player = player
  end

  def one_whole_game
  end

  # to be extracted.

  def one_whole_turn
    board.display
    choice = current_player.pick_cell
    rules.all_cell_pick_checks(choice)
    user_hash = parse_user(choice)
    board.fill_cell_at(user_hash[:row], user_hash[:cell_num], current_player)
  end

  # to be extracted to an apporiate class

  def parse_user(choice)
    user_arr = choice.strip.split(' ')
    {row: user_arr[0], cell_num: user_arr[1]}
  end




end


require_relative 'player'
require_relative 'board'
require_relative 'rules'
require_relative 'parser'

class Game
  attr_reader :board, :player_one, :player_two, :rules, :parser
  attr_accessor :current_player

  def initialize(player = Player, board = Board.new, rules = Rules.new)
    @board = board
    @rules = rules
    @player_one = player.create_one
    @player_two = player.create_two
    @current_player = player_one
    @parser = Parser.new
  end

  def one_whole_game
    loop do
      one_whole_turn
    end
  end

  def switch_player
    current_player == player_one ? current_player=(player_two) : current_player=(player_one)
  end

  def one_whole_turn
    get_move
    exit if game_over?
  end

  private

  def get_move
    index = parser.map_cell_to_index(current_player.pick_cell)
    rules.check_valid_move(index, board)
    board.fill_cell_at(index, current_player)
  end

  def game_over?
    return if rules.victory?(board)
    return if rules.draw?(board)
  end

end

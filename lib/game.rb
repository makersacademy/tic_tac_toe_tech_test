
require_relative 'player'
require_relative 'board'
require_relative 'rules'
require_relative 'parser'

class Game
  attr_reader :board, :player, :rules, :parser

  def initialize(player = Player.new('X'), board = Board.new, rules = Rules.new)
    @board = board
    @rules = rules
    @player = player
    @parser = Parser.new
  end

  def one_whole_game
    loop do
      one_whole_turn
    end
  end

  private

  def get_move
    index = parser.map_cell_to_index(player.pick_cell)
    rules.check_valid_move(index, board)
    board.fill_cell_at(index, player)
  end

  def game_over?
    return if rules.victory?(board)
    return if rules.draw?(board)
  end

  def one_whole_turn
    get_move
    game_over?
  end
end

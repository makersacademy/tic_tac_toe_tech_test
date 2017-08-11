require_relative 'board.rb'
require_relative 'player.rb'

class Game
  attr_reader :board, :player_o_turn

  def initialize
    @board = Board.new
    @player_x = Player.new
    @player_o = Player.new(name = 'Player O', tag = 'O')
    @player_o_turn = false
  end

  def play
    switch_player
    player_turn
    request_move
    x, y = get_move
    @player_o_turn ? tag = 'O' : tag = 'X'
    board.set_cell(x, y, tag)
  end

  private

  def switch_player
    @player_o_turn = !@player_o_turn
  end

  def get_move(player_move = gets.chomp)
    player_move_to_coordinate(player_move)
  end

  def player_turn
    puts 'Player O turn' if @player_o_turn
    puts 'Player X turn' if !@player_o_turn
  end

  def request_move
    puts 'Enter number from 1-9 to make your move'
  end

  def player_move_to_coordinate(player_move)
    mapping = {
      "1" => [0, 0],
      "2" => [0, 1],
      "3" => [0, 2],
      "4" => [1, 0],
      "5" => [1, 1],
      "6" => [1, 2],
      "7" => [2, 0],
      "8" => [2, 2],
      "9" => [2, 2]
    }
    mapping[player_move]
  end
end

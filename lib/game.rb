require_relative 'player'
require_relative 'board'

class Game
  attr_reader :player1, :player2, :board, :current_move, :current_player

  def initialize(arguments)
    @player1 = arguments.fetch(:player1)
    @player2 = arguments.fetch(:player2)
    @board = arguments.fetch(:board)
  end

  def print_board
    @board.grid.each do |line|
      puts line.join(' | ')
    end
  end

  def get_input
    puts "#{@current_player.name} please choose the next position for #{@current_player.move}"
    @current_move = gets.chomp
  end

  def make_move
    get_input
    @board.set_value(position_label: @current_move, move: @current_player.move)
  end

  def check_winner
    @winner = @current_player if @board.winning?
  end

  def end_game?
    check_winner
    return true if @winner || @board.draw?
  end

  def result
    @winner ? "The winner is #{@winner.name}" : "It's a draw"
  end

  def play
    print_board
    decide_first_player
    turns
    result
  end

  def turns
    until end_game?
      make_move
      print_board
      switch_players
    end
  end

  private

  def switch_players
    unless end_game?
      @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
    end
  end

  def decide_first_player
    @current_player = [@player1, @player2].sample
  end
end

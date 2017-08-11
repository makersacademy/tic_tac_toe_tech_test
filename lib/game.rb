class Game

  attr_reader :board, :player_1, :player_2, :turn

  def initialize(board, player1, player2)
    @board = board
    @player_1 = player1
    @player_2 = player2
    @turn = 'X'
  end

  def start
    setup_board
  end

  def make_choice(number)
    play_square(number)
  end

  private

  def setup_board
    @board.create_board
    set_players
  end

  def set_players
    @player_1.value = 'X'
    @player_2.value = 'O'
    show_board
  end

  def show_board
    @board.print_board
    announce_turn
  end

  def announce_turn
    if @turn == 'X'
      puts "It's #{@player_1.name}'s turn!\n\n"
    else
      puts "It's #{@player_2.name}'s turn!\n\n"
    end
  end

  def play_square(number)
    value = @turn
    @board.play(number, value)
    switch_turn
  end

  def switch_turn
    @turn == 'X' ? @turn = 'O' : @turn = 'X'
    show_board
  end

  def check_result
    
  end

  def win

  end

end

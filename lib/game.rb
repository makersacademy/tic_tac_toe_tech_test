
# Understands how to

class Game
  def initialize(player = Player, messages = Messages.new, board = Board.new, rules = Rules.new, parser = Parser.new)
    @board = board
    @parser = parser
    @rules = rules
    @messages = messages
    @player_one = player.create(:X)
    @player_two = player.create(:O)
    @current_player = player_one
    one_whole_game
  end

  private

  attr_reader :board, :parser, :rules, :messages, :player_one, :player_two, :current_player

  def switch_player
    current_player == player_one ? @current_player = player_two : @current_player = player_one
  end

  def process_choice
    grid_index = parser.map_choice_to_grid(current_player.get_choice)
    rules.check_valid_move(grid_index, board)
    board.fill_at(grid_index, current_player)
  end

  def draw_proc
    messages.draw
    exit
  end

  def win_proc
    messages.win
    exit
  end

  def check_win
    win_proc if rules.victory?(board)
  end

  def check_draw
    draw_proc if rules.draw?(board)
  end

  def one_whole_turn
    messages.make_choice
    process_choice
    board.display
    check_draw
    check_win
    switch_player
  end

  def one_whole_game
    loop do
      one_whole_turn
    end
  end
end

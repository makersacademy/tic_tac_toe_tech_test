class Board

  SQUARE_LOCATION = {1 => [0,0], 2 => [0,1], 3 => [0,2],
                     4 => [1,0], 5 => [1,1], 6 => [1,2],
                     7 => [2,0], 8 => [2,1], 9 => [2,2]}

  attr_reader :board, :player_1, :player_2, :turn

  def initialize(player_1, player_2)
    @board = board
    @player_1 = player_1
    @player_2 = player_2
    @turn = 'X'
  end

  def create_board
    @board = [[1,2,3],
              [4,5,6],
              [7,8,9]]
  end

  def print_board
    board = @board.map { |x| x.inspect}.join("\n")
    puts board
  end

  def play_square(number)
    find_location(number)
    change_turn
    print_board
  end

  def check_turn
    @turn
  end

  private

  def change_turn
    @turn == 'X' ? @turn = 'O' : @turn = 'X'
  end

  def find_location(number)
    location = SQUARE_LOCATION[number]
    replace_square(location)
  end

  def replace_square(location)
    if check_turn == 'X'
      @board[location[0]][location[1]] = 'X'
    else
      @board[location[0]][location[1]] = 'O'
    end
  end


end

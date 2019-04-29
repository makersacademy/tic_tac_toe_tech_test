# Understands how to present messages relating to game status in tic-tac-toe

class Messages
  def make_choice
    puts 'Pick a cell'
  end

  def draw
    puts 'The game is a draw! Why not play again?'
  end

  def win
    puts 'Current player wins :)'
  end
end

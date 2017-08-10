

class Player
  attr_reader :token

  def initialize(token = token)
    @token = token
  end

  def pick_cell
    gets.chomp
  end
end

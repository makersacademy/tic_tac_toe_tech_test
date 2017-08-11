

class Player
  attr_reader :token

  def initialize(token = token)
    @token = token
  end

  def pick_cell
    gets.chomp
  end

  def self.create_one
    Player.new(token: "X")
  end

  def self.create_two
    Player.new(token: "Y")
  end

end

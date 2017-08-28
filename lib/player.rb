

class Player
  attr_reader :token

  def initialize(token)
    @token = token
  end

  def get_choice(stdin = STDIN)
    stdin.gets.downcase.chomp
  end

  def self.create(token)
    Player.new(token)
  end
end

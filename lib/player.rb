class Player
  attr_reader :name, :tag

  def initialize(name = 'Player X', tag = 'X')
    @name = name
    @tag = tag
  end
end

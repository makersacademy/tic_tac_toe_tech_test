class Player

  attr_accessor :value
  attr_reader :name


  def initialize(name)
    @name = name
    @value = nil
  end
end

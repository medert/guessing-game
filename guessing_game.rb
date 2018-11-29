# Your code goes here

class Game
  attr_accessor :level

  def initialize(level)
    case level.downcase
    when 'easy'
      @level = rand(10) + 1
    when 'hard'
      @level = rand(20) + 1
    end
  end

end

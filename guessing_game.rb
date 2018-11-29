# Your code goes here

class Game
  attr_accessor :secret_num

  def initialize(level)
    case level.downcase
    when 'easy'
      @secret_num = rand(10) + 1
    when 'hard'
      @secret_num = rand(20) + 1
    end
  end

  def check_guess(guess)
    if @secret_num == guess
      return true
    else
      return false
    end
  end

end

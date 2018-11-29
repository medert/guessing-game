require 'pry'
require_relative './guessing_game.rb'


score = 0

puts "Welcome to the Guessing Game!"
print "What difficulty would you like to play? "

while true
  puts "Type easy or hard:"
  print "> "
  difficulty = gets.chomp.downcase

  game = Game.new(difficulty)

  case difficulty
  when 'easy'
    level = 10
    break
  when "hard"
    level = 10
    break
  else
    puts "Invalid input, please enter 'hard' or 'easy'"
  end
end

puts "I've picked a number between 1 and #{level}. Now guess it!"

while true
  score += 1
  print "> "
  guess = gets.chomp.to_i
  if guess != Integer
    puts "Invalid input. Please, enter numbers only!"
  elsif game.check_guess(guess)
    puts "You win! Nice job!"
    break
  else
    puts "Nope, try again!"
  end
end

puts "Your score was: #{score}"

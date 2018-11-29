require 'rspec'
require 'pry'
require_relative "../guessing_game.rb"


RSpec.describe Game do
  game_1 = Game.new('easy')
  game_2 = Game.new('hard')

  describe '.secret_num' do
    it "should be set to a range of 1-10" do
      200.times do
        expect(game_1.secret_num).to be_between(1,10).inclusive
      end
    end
    it "should be set to a range of 1-20" do
      200.times do
        expect(game_2.secret_num).to be_between(1,20).inclusive
      end
    end
  end

  describe '.check_guess' do
    guess_num = game_1.secret_num
    it "check wheather player guessed secret number" do
      expect(game_1.check_guess(guess_num)).to be true
    end
    it "check wheather player guessed secret number" do
      expect(game_1.check_guess(guess_num + 1)).to be false
    end
  end
end

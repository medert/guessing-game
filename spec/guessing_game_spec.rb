require 'rspec'
require 'pry'
require_relative "../guessing_game.rb"


RSpec.describe Game do
  game_1 = Game.new('easy')
  game_2 = Game.new('hard')
  describe '.level' do
    it "should be set to a range of 1-10" do
      200.times do
        expect(game_1.level).to be_between(1,10).inclusive
      end
    end
    it "should be set to a range of 1-20" do
      200.times do
        expect(game_2.level).to be_between(1,20).inclusive
      end
    end
  end
end

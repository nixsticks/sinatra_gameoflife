require 'gosu'
require_relative 'game_of_life'

class GameofLifeWindow < Gosu::Window
  def initialize
    super 640, 480, false
  end

  def update
  end

  def draw
  end
end

GameofLifeWindow.new.show
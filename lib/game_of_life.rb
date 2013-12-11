require_relative 'grid'
require_relative 'cell'
require_relative 'state'
require_relative 'display'
require_relative 'patterns'
require 'rainbow'

class Game
  include Patterns

  attr_reader :grid, :display

  def initialize(display)
    @display = display
    @grid = display.grid
  end
end
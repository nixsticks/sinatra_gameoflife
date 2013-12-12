require_relative './patterns'

class Game
  include Patterns

  attr_reader :grid, :display

  def initialize(display)
    @display = display
    @grid = display.grid
  end
end
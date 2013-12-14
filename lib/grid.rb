require 'Matrix'

class Grid
  attr_accessor :cells
  attr_reader :x, :y

  def initialize(x, y)
    @cells = Matrix.build(x,y) {|row, col| Cell.new(self, row, col, Dead.new)}
    @x = x
    @y = y
  end

  def populate_random
    cells.each do |cell|
      r = rand(1..5)
      r < 3 ? cell.set_live : next
    end
  end

  def next_generation
    cells.each {|cell| cell.compute_state }
    cells.each {|cell| cell.transition_state }
  end
end
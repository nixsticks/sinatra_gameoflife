class Grid
  attr_accessor :cells
  attr_reader :x, :y

  def initialize(x, y)
    @cells = {}
    @x = x
    @y = y
  end

  def populate_random
    x.times do |i|
      y.times do |j|
        r = rand(1..5)
        r < 3 ? state = Alive.new : state = Dead.new
        Cell.new(self, i, j, state)
      end
    end
  end

  def populate_dead
    x.times do |i|
      y.times {|j| Cell.new(self, i, j, Dead.new)}
    end
  end

  def next_generation
    cells.each {|position, cell| cell.compute_state }
    cells.each {|position, cell| cell.transition_state }
  end
end
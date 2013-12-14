class Cell
  attr_accessor :state, :new_state
  attr_reader :grid, :x, :y

  NEIGHBORS = [[0,-1], [0,1], [-1,0], [1,0], [-1,-1], [1,-1], [-1,1], [1,1]]

  def initialize(grid, x=0, y=0, state)
    @state = state
    @grid = grid
    @x = x
    @y = y
  end

  def live_neighbors
    collect_neighbors.select{|cell| cell.alive?}.size
  end

  def compute_state
    @new_state = @state.flip_state(live_neighbors)
  end

  def transition_state
    @state = @new_state
  end

  def set_live
    @state = Alive.new
  end

  def alive?
    state.is_a?(Alive)
  end
  
  def collect_neighbors
    NEIGHBORS.map do |n|
      n_x = x + n[0]
      n_y = y + n[1]

      grid.cells[n_x, n_y] if exists?(n_x) && exists?(n_y)
    end.compact
  end

  def exists?(number)
    number >= 0
  end

  def display
    alive? ? "<div class='alive'></div>" : "<div class='dead'></div>"
  end
end
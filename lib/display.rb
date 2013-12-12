puts `clear`

class Display
  attr_reader :grid

  def initialize(grid)
    @grid = grid
  end

  def show
    array = []
    grid.y.times { array << Array.new }

    grid.cells.each {|position, cell| cell.alive? ? array[cell.y][cell.x] = "*" : array[cell.y][cell.x] = " "}
    array.each {|inner_array| inner_array.each {|x| "#{x}".color(:magenta)}}
    # puts "\e[H"; sleep(0.1)
    array
  end

  # def run
  #   loop {grid.next_generation; display}
  # end
end
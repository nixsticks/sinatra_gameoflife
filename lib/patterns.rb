module Patterns
  def glider_gun
    half_x = grid.x/2
    start_y = 5

    grid.cells["#{half_x - 15},#{start_y}"].set_live
    grid.cells["#{half_x - 16},#{start_y}"].set_live
    grid.cells["#{half_x - 15},#{start_y + 1}"].set_live
    grid.cells["#{half_x - 16},#{start_y + 1}"].set_live

    grid.cells["#{half_x - 4},#{start_y - 2}"].set_live
    grid.cells["#{half_x - 3},#{start_y - 2}"].set_live
    grid.cells["#{half_x - 5},#{start_y - 1}"].set_live
    grid.cells["#{half_x - 1},#{start_y - 1}"].set_live
    grid.cells["#{half_x - 6},#{start_y}"].set_live
    grid.cells["#{half_x},#{start_y}"].set_live
    grid.cells["#{half_x - 6},#{start_y + 1}"].set_live
    grid.cells["#{half_x - 2},#{start_y + 1}"].set_live
    grid.cells["#{half_x},#{start_y + 1}"].set_live
    grid.cells["#{half_x + 1},#{start_y + 1}"].set_live
    grid.cells["#{half_x - 6},#{start_y + 2}"].set_live
    grid.cells["#{half_x},#{start_y + 2}"].set_live
    grid.cells["#{half_x - 5},#{start_y + 3}"].set_live
    grid.cells["#{half_x - 1},#{start_y + 3}"].set_live
    grid.cells["#{half_x - 4},#{start_y + 4}"].set_live
    grid.cells["#{half_x - 3},#{start_y + 4}"].set_live

    grid.cells["#{half_x + 8},#{start_y - 4}"].set_live
    grid.cells["#{half_x + 6},#{start_y - 3}"].set_live
    grid.cells["#{half_x + 8},#{start_y - 3}"].set_live
    grid.cells["#{half_x + 4},#{start_y - 2}"].set_live
    grid.cells["#{half_x + 5},#{start_y - 2}"].set_live
    grid.cells["#{half_x + 4},#{start_y - 1}"].set_live
    grid.cells["#{half_x + 5},#{start_y - 1}"].set_live
    grid.cells["#{half_x + 4},#{start_y}"].set_live
    grid.cells["#{half_x + 5},#{start_y}"].set_live
    grid.cells["#{half_x + 6},#{start_y + 1}"].set_live
    grid.cells["#{half_x + 8},#{start_y + 1}"].set_live
    grid.cells["#{half_x + 8},#{start_y + 2}"].set_live

    grid.cells["#{half_x + 18},#{start_y - 2}"].set_live
    grid.cells["#{half_x + 19},#{start_y - 2}"].set_live
    grid.cells["#{half_x + 18},#{start_y - 1}"].set_live
    grid.cells["#{half_x + 19},#{start_y - 1}"].set_live
  end

  def beehive(row, column)
    grid.cells["#{row},#{column + 2}"].set_live
    grid.cells["#{row},#{column + 3}"].set_live
    grid.cells["#{row},#{column + 4}"].set_live
    grid.cells["#{row},#{column + 8}"].set_live
    grid.cells["#{row},#{column + 9}"].set_live
    grid.cells["#{row},#{column + 10}"].set_live

    grid.cells["#{row + 2},#{column}"].set_live
    grid.cells["#{row + 2},#{column + 5}"].set_live
    grid.cells["#{row + 2},#{column + 7}"].set_live
    grid.cells["#{row + 2},#{column + 12}"].set_live

    grid.cells["#{row + 3},#{column}"].set_live
    grid.cells["#{row + 3},#{column + 5}"].set_live
    grid.cells["#{row + 3},#{column + 7}"].set_live
    grid.cells["#{row + 3},#{column + 12}"].set_live   

    grid.cells["#{row + 4},#{column}"].set_live
    grid.cells["#{row + 4},#{column + 5}"].set_live
    grid.cells["#{row + 4},#{column + 7}"].set_live
    grid.cells["#{row + 4},#{column + 12}"].set_live

    grid.cells["#{row + 5},#{column + 2}"].set_live
    grid.cells["#{row + 5},#{column + 3}"].set_live
    grid.cells["#{row + 5},#{column + 4}"].set_live
    grid.cells["#{row + 5},#{column + 8}"].set_live
    grid.cells["#{row + 5},#{column + 9}"].set_live
    grid.cells["#{row + 5},#{column + 10}"].set_live

    grid.cells["#{row + 7},#{column + 2}"].set_live
    grid.cells["#{row + 7},#{column + 3}"].set_live
    grid.cells["#{row + 7},#{column + 4}"].set_live
    grid.cells["#{row + 7},#{column + 8}"].set_live
    grid.cells["#{row + 7},#{column + 9}"].set_live
    grid.cells["#{row + 7},#{column + 10}"].set_live

    grid.cells["#{row + 8},#{column}"].set_live
    grid.cells["#{row + 8},#{column + 5}"].set_live
    grid.cells["#{row + 8},#{column + 7}"].set_live
    grid.cells["#{row + 8},#{column + 12}"].set_live

    grid.cells["#{row + 9},#{column}"].set_live
    grid.cells["#{row + 9},#{column + 5}"].set_live
    grid.cells["#{row + 9},#{column + 7}"].set_live
    grid.cells["#{row + 9},#{column + 12}"].set_live   

    grid.cells["#{row + 10},#{column}"].set_live
    grid.cells["#{row + 10},#{column + 5}"].set_live
    grid.cells["#{row + 10},#{column + 7}"].set_live
    grid.cells["#{row + 10},#{column + 12}"].set_live

    grid.cells["#{row + 12},#{column + 2}"].set_live
    grid.cells["#{row + 12},#{column + 3}"].set_live
    grid.cells["#{row + 12},#{column + 4}"].set_live
    grid.cells["#{row + 12},#{column + 8}"].set_live
    grid.cells["#{row + 12},#{column + 9}"].set_live
    grid.cells["#{row + 12},#{column + 10}"].set_live 
  end

  def spaceship(row, column)
    grid.cells["#{row},#{column}"].set_live
    grid.cells["#{row},#{column + 3}"].set_live
    grid.cells["#{row + 1},#{column - 1}"].set_live
    grid.cells["#{row + 2},#{column - 1}"].set_live
    grid.cells["#{row + 3},#{column - 1}"].set_live
    grid.cells["#{row + 3},#{column}"].set_live
    grid.cells["#{row + 3},#{column + 1}"].set_live
    grid.cells["#{row + 3},#{column + 2}"].set_live
    grid.cells["#{row + 2},#{column + 3}"].set_live
  end

  def glider(row, column)
    grid.cells["#{row},#{column + 1}"].set_live
    grid.cells["#{row},#{column + 2}"].set_live
    grid.cells["#{row},#{column}"].set_live
    grid.cells["#{row + 1},#{column}"].set_live
    grid.cells["#{row + 2},#{column + 2}"].set_live
  end

  def vertical(row,column)
    grid.cells["#{row},#{column}"].set_live
    grid.cells["#{row + 1},#{column}"].set_live
    grid.cells["#{row + 2},#{column}"].set_live
    grid.cells["#{row + 3},#{column}"].set_live
    grid.cells["#{row + 4},#{column}"].set_live
  end

  def podium(row, column)
    grid.cells["#{row},#{column}"].set_live
    grid.cells["#{row + 1},#{column + 1}"].set_live
    grid.cells["#{row + 1},#{column - 1}"].set_live
    grid.cells["#{row + 1},#{column}"].set_live
  end

  def rotated_L(row, column)
    grid.cells["#{row},#{column}"].set_live
    grid.cells["#{row + 1},#{column}"].set_live
    grid.cells["#{row},#{column + 1}"].set_live
    grid.cells["#{row},#{column + 2}"].set_live
  end
end
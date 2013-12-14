module Patterns
  def glider_gun(x, y)
    grid.cells[(x), (y - 15)].set_live
    grid.cells[(x), (y - 16)].set_live
    grid.cells[(x + 1), (y - 15)].set_live
    grid.cells[(x + 1), (y - 16)].set_live

    grid.cells[(x - 2), (y - 4)].set_live
    grid.cells[(x - 2), (y - 3)].set_live
    grid.cells[(x - 1), (y - 5)].set_live
    grid.cells[(x - 1), (y - 1)].set_live
    grid.cells[(x), (y - 6)].set_live
    grid.cells[(x), (y)].set_live
    grid.cells[(x + 1), (y - 6)].set_live
    grid.cells[(x + 1), (y - 2)].set_live
    grid.cells[(x + 1), (y)].set_live
    grid.cells[(x + 1), (y + 1)].set_live
    grid.cells[(x + 2), (y - 6)].set_live
    grid.cells[(x + 2), (y)].set_live
    grid.cells[(x + 3), (y - 5)].set_live
    grid.cells[(x + 3), (y - 1)].set_live
    grid.cells[(x + 4), (y - 4)].set_live
    grid.cells[(x + 4), (y - 3)].set_live

    grid.cells[(x - 4), (y + 8)].set_live
    grid.cells[(x - 3), (y + 6)].set_live
    grid.cells[(x - 3), (y + 8)].set_live
    grid.cells[(x - 2), (y + 4)].set_live
    grid.cells[(x - 2), (y + 5)].set_live
    grid.cells[(x - 1), (y + 4)].set_live
    grid.cells[(x - 1), (y + 5)].set_live
    grid.cells[(x), (y + 4)].set_live
    grid.cells[(x), (y + 5)].set_live
    grid.cells[(x + 1), (y + 6)].set_live
    grid.cells[(x + 1), (y + 8)].set_live
    grid.cells[(x + 2), (y + 8)].set_live

    grid.cells[(x - 2), (y + 18)].set_live
    grid.cells[(x - 2), (y + 19)].set_live
    grid.cells[(x - 1), (y + 18)].set_live
    grid.cells[(x - 1), (y + 19)].set_live
  end

  def beehive(row, column)
    grid.cells[(row),(column + 2)].set_live
    grid.cells[(row),(column + 3)].set_live
    grid.cells[(row),(column + 4)].set_live
    grid.cells[(row),(column + 8)].set_live
    grid.cells[(row),(column + 9)].set_live
    grid.cells[(row),(column + 10)].set_live

    grid.cells[(row + 2),(column)].set_live
    grid.cells[(row + 2),(column + 5)].set_live
    grid.cells[(row + 2),(column + 7)].set_live
    grid.cells[(row + 2),(column + 12)].set_live

    grid.cells[(row + 3),(column)].set_live
    grid.cells[(row + 3),(column + 5)].set_live
    grid.cells[(row + 3),(column + 7)].set_live
    grid.cells[(row + 3),(column + 12)].set_live   

    grid.cells[(row + 4),(column)].set_live
    grid.cells[(row + 4),(column + 5)].set_live
    grid.cells[(row + 4),(column + 7)].set_live
    grid.cells[(row + 4),(column + 12)].set_live

    grid.cells[(row + 5),(column + 2)].set_live
    grid.cells[(row + 5),(column + 3)].set_live
    grid.cells[(row + 5),(column + 4)].set_live
    grid.cells[(row + 5),(column + 8)].set_live
    grid.cells[(row + 5),(column + 9)].set_live
    grid.cells[(row + 5),(column + 10)].set_live

    grid.cells[(row + 7),(column + 2)].set_live
    grid.cells[(row + 7),(column + 3)].set_live
    grid.cells[(row + 7),(column + 4)].set_live
    grid.cells[(row + 7),(column + 8)].set_live
    grid.cells[(row + 7),(column + 9)].set_live
    grid.cells[(row + 7),(column + 10)].set_live

    grid.cells[(row + 8),(column)].set_live
    grid.cells[(row + 8),(column + 5)].set_live
    grid.cells[(row + 8),(column + 7)].set_live
    grid.cells[(row + 8),(column + 12)].set_live

    grid.cells[(row + 9),(column)].set_live
    grid.cells[(row + 9),(column + 5)].set_live
    grid.cells[(row + 9),(column + 7)].set_live
    grid.cells[(row + 9),(column + 12)].set_live   

    grid.cells[(row + 10),(column)].set_live
    grid.cells[(row + 10),(column + 5)].set_live
    grid.cells[(row + 10),(column + 7)].set_live
    grid.cells[(row + 10),(column + 12)].set_live

    grid.cells[(row + 12),(column + 2)].set_live
    grid.cells[(row + 12),(column + 3)].set_live
    grid.cells[(row + 12),(column + 4)].set_live
    grid.cells[(row + 12),(column + 8)].set_live
    grid.cells[(row + 12),(column + 9)].set_live
    grid.cells[(row + 12),(column + 10)].set_live 
  end

  def spaceship(row, column)
    grid.cells[(row),(column)].set_live
    grid.cells[(row),(column + 3)].set_live
    grid.cells[(row + 1),(column - 1)].set_live
    grid.cells[(row + 2),(column - 1)].set_live
    grid.cells[(row + 3),(column - 1)].set_live
    grid.cells[(row + 3),(column)].set_live
    grid.cells[(row + 3),(column + 1)].set_live
    grid.cells[(row + 3),(column + 2)].set_live
    grid.cells[(row + 2),(column + 3)].set_live
  end

  def glider(row, column)
    grid.cells[(row),(column + 1)].set_live
    grid.cells[(row),(column + 2)].set_live
    grid.cells[(row),(column)].set_live
    grid.cells[(row + 1),(column)].set_live
    grid.cells[(row + 2),(column + 2)].set_live
  end

  def vertical(row,column)
    grid.cells[(row),(column)].set_live
    grid.cells[(row + 1),(column)].set_live
    grid.cells[(row + 2),(column)].set_live
    grid.cells[(row + 3),(column)].set_live
    grid.cells[(row + 4),(column)].set_live
  end

  def podium(row, column)
    grid.cells[(row),(column)].set_live
    grid.cells[(row + 1),(column + 1)].set_live
    grid.cells[(row + 1),(column - 1)].set_live
    grid.cells[(row + 1),(column)].set_live
  end

  def rotated_L(row, column)
    grid.cells[(row),(column)].set_live
    grid.cells[(row + 1),(column)].set_live
    grid.cells[(row),(column + 1)].set_live
    grid.cells[(row),(column + 2)].set_live
  end
end
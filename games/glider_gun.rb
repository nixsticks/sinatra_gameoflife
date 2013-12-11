require_relative '../lib/game_of_life'

grid = Grid.new(40, 40)
grid.populate_dead

game = Game.new(Display.new(grid))
game.glider_gun
game.display.run
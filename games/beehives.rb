require_relative '../lib/game_of_life'

grid = Grid.new(60, 40)
grid.populate_dead

game = Game.new(Display.new(grid))
game.beehive(5, 5)
game.beehive(25, 25)
game.beehive(5, 25)
game.beehive(25, 5)
game.display.run
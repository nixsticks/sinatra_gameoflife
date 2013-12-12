Dir.glob('./lib/*.rb') do |model|
  require model
end

require 'bundler'
Bundler.require

module GameofLife
  class App < Sinatra::Application

    before do
      @@game ||= Game.new(Display.new(Grid.new(60,40).tap{|grid| grid.populate_random}))
    end

    get '/' do
      "Welcome to the Game of Life!"
    end

    get '/beehives' do
      @@game.grid.next_generation
      @game = @@game
      erb :beehives
    end

    helpers do
      def setup(game)
        game.beehive(5, 5)
        game.beehive(25, 25)
        game.beehive(5, 25)
        game.beehive(25, 5)
      end
    end
  
    # get '/:game' do |game|
    #   if self.class.game.nil?
    #     self.class.start_game
    #   else
    #     self.class.game.grid.next_generation
    #   end
    #   @new_game = self.class.game
    #   erb game.to_sym
    # end

    # helpers do
    #   def self.game
    #     @game
    #   end

    #   def self.start_game
    #     grid = Grid.new(60,40)
    #     grid.populate_dead
    #     @game = Game.new(Display.new(grid))
    #   end

    #   def self.set_beehives
    #     @game.beehive(5, 5)
    #     @game.beehive(25, 25)
    #     @game.beehive(5, 25)
    #     @game.beehive(25, 5)
    #   end
  end
end
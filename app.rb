require 'matrix'
require 'bundler'
Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end

module GameofLife
  class App < Sinatra::Application
    set :random, Game.new(Grid.new(40,60))
    set :beehives, Game.new(Grid.new(40,60))
    set :glider_guns, Game.new(Grid.new(40,70))

    get '/random' do
      @self = '/random'
      @game = settings.random
      random(@game)
      erb :game
    end

    get '/random_inner' do
      settings.random.grid.next_generation
      @game = settings.random
      erb :game_inner, :layout => false
    end

    get '/beehives' do
      @self = '/beehives'
      @game = settings.beehives
      beehives(@game)
      erb :game
    end

    get '/beehives_inner' do
      settings.beehives.grid.next_generation
      @game = settings.beehives
      erb :game_inner, :layout => false
    end

    get '/glider_guns' do
      @self = '/glider_guns'
      @game = settings.glider_guns.tap {|game| glider_guns(game)}
      erb :game
    end

    get '/glider_guns_inner' do
      settings.glider_guns.grid.next_generation
      @game = settings.glider_guns
      erb :game_inner, :layout => false
    end

    helpers do
      def random(game)
        game.grid.populate_random
      end

      def beehives(game)
        game.beehive(5, 5)
        game.beehive(5, 25)
        game.beehive(5, 45)
        # game.beehive(5, 65)
        # game.beehive(5, 85)
        # game.beehive(25, 5)
        # game.beehive(25, 25)
        # game.beehive(25, 45)
        # game.beehive(25, 65)
        # game.beehive(25, 85)
        # game.beehive(45, 5)
        # game.beehive(45, 25)
        # game.beehive(45, 45)
        # game.beehive(45, 65)
        # game.beehive(45, 85)
      end

      def glider_guns(game)
        game.glider_gun(10, 25)
        # game.glider_gun(8, 50)
      end
    end
  end
end
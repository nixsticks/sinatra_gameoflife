Dir.glob('./lib/*.rb') do |model|
  require model
end

require 'matrix'
require 'bundler'
Bundler.require

module GameofLife
  class App < Sinatra::Application

    before do
      @@game ||= Game.new(Grid.new(60,120)).tap{|game| beehives(game)}
    end

    get '/' do
      erb :index
    end

    get '/game_of_life' do
      @@game.grid.next_generation
      @game = @@game
      erb :game_of_life
    end

    get '/beehives' do
      @@game.grid.next_generation
      @game = @@game
      erb :beehives
    end

    helpers do
      def beehives(game)
        game.beehive(5, 5)
        game.beehive(5, 25)
        game.beehive(5, 45)
        game.beehive(5, 65)
        game.beehive(5, 85)
        game.beehive(25, 5)
        game.beehive(25, 25)
        game.beehive(25, 45)
        game.beehive(25, 65)
        game.beehive(25, 85)
        game.beehive(45, 5)
        game.beehive(45, 25)
        game.beehive(45, 45)
        game.beehive(45, 65)
        game.beehive(45, 85)
      end

      def glider_guns(game)
        game.glider_gun(8, 20)
        game.glider_gun(8, 80)
      end
    end
  end
end
require 'matrix'
require 'bundler'
Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end

module GameofLife
  class App < Sinatra::Application

    # before do
    #   @@game ||= Game.new(Grid.new(40,60)).tap{|game| random(game)}
    # end

    get '/' do
      @@game.grid.next_generation
      @game = @@game
      erb :index
    end

    get '/random' do
      @self = '/random'
      @@random ||= Game.new(Grid.new(40,60)).tap{|game| random(game)}
      @random = @@random
      erb :random
    end

    get '/random_inner' do
      @@random.grid.next_generation
      @random = @@random
      erb :random_inner, :layout => false
    end

    get '/beehives' do
      @self = '/beehives'
      @@beehives ||= Game.new(Grid.new(40,60)).tap{|game| beehives(game)}
      @beehives = @@beehives
      erb :beehives
    end

    get '/beehives_inner' do
      @@beehives.grid.next_generation
      @beehives = @@beehives
      erb :beehives_inner, :layout => false
    end

    post '/restart' do
      @@game = Game.new(Grid.new(40,60)).tap{|game| random(game)}
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
        game.glider_gun(8, 20)
        game.glider_gun(8, 80)
      end
    end
  end
end
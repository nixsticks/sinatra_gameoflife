require 'rack/session/moneta'
require 'matrix'
require 'bundler'
Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end

module GameofLife
  class App < Sinatra::Application
    use Rack::Session::Moneta, :store => Moneta.new(:Memory, :expires => true)

    get '/' do
      erb :index
    end

    get '/random' do
      session[:random] = Game.new(Grid.new(40,60))
      @game = session[:random]
      @reload = true
      @inner = "random_inner"
      random(@game)
      erb :game
    end

    get '/random_inner' do
      @game = session[:random]
      @game.grid.next_generation
      erb :game_inner, :layout => false
    end

    get '/beehives' do
      session[:beehives] = Game.new(Grid.new(40,60))
      @game = session[:beehives]
      @reload = true
      @inner = "beehives_inner"
      beehives(@game)
      erb :game
    end

    get '/beehives_inner' do
      @game = session[:beehives]
      @game.grid.next_generation
      erb :game_inner, :layout => false
    end

    get '/glider_guns' do
      session[:guns] = Game.new(Grid.new(40,60))
      @game = session[:guns]
      @reload = true
      @inner = "glider_guns_inner"
      glider_guns(@game)
      erb :game
    end

    get '/glider_guns_inner' do
      @game = session[:guns]
      @game.grid.next_generation
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

      def simple_partial(template)
        erb template
      end
    end
  end
end
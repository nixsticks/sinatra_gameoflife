Dir.glob('./lib/*.rb') do |model|
  require model
end

require 'bundler'
Bundler.require

module GameofLife
  class App < Sinatra::Application

    before do
      @@game ||= Game.new(Grid.new(60,120).tap{|grid| grid.populate_random})
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
      def setup(game)
        game.beehive(5, 5)
        game.beehive(25, 25)
        game.beehive(5, 25)
        game.beehive(25, 5)
      end
    end
  end
end
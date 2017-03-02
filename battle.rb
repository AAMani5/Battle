require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  # set :sessions, true

  get '/' do
    erb(:index)
  end

  get '/play' do
     erb(:play)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:name_1]),Player.new(params[:name_2]))
    redirect '/play'
  end

  get '/attack' do
    $game.attack($game.opponent_player)
    erb (:attack)
  end

  run! if app_file == $0
end

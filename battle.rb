require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  # set :sessions, true

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_hp = $player_2.hit_points
    erb(:play)
  end

  post '/names' do
    $player_1 = Player.new(params[:name_1])
    $player_2 = Player.new(params[:name_2])
    redirect '/play'
  end

  post '/attack' do
    @player_1_name = $name_1.name
    @player_2_name = $name_2.name
    erb(:attack)
  end

  run! if app_file == $0
end

require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  # set :sessions, true

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name_1 = $name_1.name
    @name_2 = $name_2.name
    erb(:play)
  end

  post '/names' do
    $name_1 = Player.new(params[:name_1])
    $name_2 = Player.new(params[:name_2])
    redirect '/play'
  end

  post '/attack' do
    @name_1 = $name_1.name
    @name_2 = $name_2.name
    erb(:attack)
  end

  run! if app_file == $0
end

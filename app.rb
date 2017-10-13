require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  #
  # enable :sessions

  # STARTING_HIT_POINTS = 10

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1_name = Player.new(params[:player_1_name])
    $player_2_name = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1_name
    @player_2_name = $player_2_name
    # @player_1_hit_points = STARTING_HIT_POINTS
    # @player_2_hit_points = STARTING_HIT_POINTS
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1_name
    @player_2_name = $player_2_name
    erb :attack
  end


  run! if app_file == $0
end

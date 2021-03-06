require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base

enable :sessions

get '/' do
  erb :index
end

post '/names' do
  player1 = Player.new(params[:player1])
  player2 = Player.new(params[:player2])
  @game = Game.create(player1, player2)
  redirect to('/play')
end

before do
  @game = Game.instance
end

get '/play' do
  erb :play
end

post '/attack' do
  @game.attack
  if @game.game_over?
    redirect to '/game_over'
  else
    redirect to '/attack'
  end
end

get '/attack' do
  erb :attack
end

post '/switch_players' do
  @game.switch_players
  redirect to('/play')
end

get '/game_over' do
  erb :game_over
end

run! if app_file == $0
end

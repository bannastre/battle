require "sinatra/base"

class Battle < Sinatra::Base

enable :sessions

get '/' do
  erb :index
end

post '/names' do
  session['player1'] = params[:player1]
  session['player2'] = params[:player2]
  redirect to('/play')
end

get '/play' do
  erb :play
end

get '/attack' do
  erb :attack
end

  run! if app_file ==$0
end

class PlayerController < ApplicationController
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/player' do
    @players = Player.all
    erb :'players/index'
  end

  get '/signup' do #new
    @players = Player.all
    @characters = Character.all
    erb :'players/signup'
  end

  post '/signup' do
    @player = Player.create(params[:player])
    redirect "/player/#{@player.id}"
  end

  get '/player/:id' do
    @player = Player.find(params[:id])
    erb :'/players/show'
  end
  
  get '/player/:id/edit' do
    @player = Player.find(params[:id])
    erb :'/players/edit'
  end
  
  patch '/player/:id' do
  end
  
  delete '/player/:id' do
  end
end
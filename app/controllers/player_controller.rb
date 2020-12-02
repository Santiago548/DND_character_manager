require 'pry'

class PlayerController < ApplicationController
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/player' do
    logged_in?
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
    redirect to "/player/#{@player.id}"
  end

  get '/login' do 
    erb :'players/login'
  end
  
  post '/login' do
    
  end

  get '/player/:id' do #find an individual player
    @player = Player.find(params[:id])
    erb :'/players/show'
  end
  
  get '/player/:id/edit' do #edit an individial player
    @player = Player.find(params[:id])
    erb :'/players/edit'
  end
  
  patch '/player/:id' do
  end
  
  delete '/player/:id' do
  end

  get '/logout' do
    
  end
end
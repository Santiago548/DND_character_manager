require 'pry'

class PlayersController < ApplicationController
  get '/players' do
    @players = Player.all
    erb :'players/index'
  end

  get '/signup' do # new
    @players = Player.all
    @characters = Character.all
    erb :'players/signup'
  end

  post '/signup' do
    player = Player.new(params[:player])
    if player.save
      redirect to "/players/#{player.id}"
    else
      @characters = Character.all
      @errors = player.errors.full_messages
      erb :'players/signup'
    end
  end

  get '/login' do
    erb :'players/login'
  end
  
  post '/login' do
    !params[:player][:username].blank? ? player = Player.find_by_username(params[:player][:username]) : player = Player.find_by_email(params[:player][:email])
    if player && player.authenticate(params[:player][:password])
      session[:player_id] = player.id
      redirect to "/players/#{player.id}"
    else
      flash[:message] = 'Invalid log in, please try again.'
      redirect to '/login'
    end
  end

  get '/players/:id' do # find an individual player
    @player = Player.find(params[:id])
    erb :'/players/show'
  end
  
  get '/players/:id/edit' do # edit an individial player
    @characters = Character.all
    @player = Player.find(params[:id])
    erb :'/players/edit'
  end
  
  patch '/players/:id' do
    player = Player.find_by_id(params[:id])
    if logged_in? && current_player.id == player.id
    player.update(params[:player])
    redirect to "/players/#{player.id}"
    else
      erb :'players/error'
    end
  end
  
  delete '/players/:id' do
    player = Player.find_by_id(params[:id])
    if logged_in? && current_player.id == player.id
    player.destroy
    # need to fix this to redirect to home page and says user was deleted
    redirect to '/'
    else
      erb :'/players/error'
    end
  end

  get '/logout' do
    session.clear
    redirect to '/'
  end
end

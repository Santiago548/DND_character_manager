class PlayerController < ApplicationController

    configure do
      set :public_folder, 'public'
      set :views, 'app/views'
    end
  
    get "/" do
      
    end

    get '/player' do
      @players = Player.all
      erb :'players/show'
    end

    get '/player/new' do
      @players = Player.all
      @characters = Character.all
      erb :'players/new'
    end

    post '/player' do

    end

    get '/player/:id' do

    end

    get '/player/:id/edit' do

    end

    patch '/player/:id' do

    end

    delete '/player/:id' do

    end
    
  end
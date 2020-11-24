class PlayerController < ApplicationController

    configure do
      set :public_folder, 'public'
      set :views, 'app/views'
    end
  
    get "/" do
      
    end

    get "/player" do

    end
  
    get '/player/new' do

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
class CharacterController < ApplicationController

    configure do
      set :public_folder, 'public'
      set :views, 'app/views'
    end
  
    get "/" do
      
    end
  
  end
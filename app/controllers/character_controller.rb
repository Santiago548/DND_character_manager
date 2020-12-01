class CharacterController < ApplicationController
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/character' do
    @characters = Character.all
    erb :'characters/show'
  end

  get '/character/new' do
  
  end

  post '/character' do
  
  end

  get '/character/:id' do
  
  end

  get '/character/:id/edit' do
  
  end

  patch '/character/:id' do

  end

  delete '/character/:id' do
  
  end
end
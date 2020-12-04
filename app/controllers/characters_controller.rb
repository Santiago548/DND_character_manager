class CharactersController < ApplicationController

  get '/character' do
    @characters = Character.all
    erb :'characters/index'
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
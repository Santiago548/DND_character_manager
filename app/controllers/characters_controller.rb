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
    @character = Character.find(params[:id])
    erb :'characters/show'
  end

  get '/character/:id/edit' do
    @character = Character.find(params[:id])
    erb :'/characters/edit'
  end

  patch '/character/:id' do
    character = Character.find_by_id(params[:id])
    character.update(params[:player])
    redirect to "/character/#{character.id}"
  end

  delete '/character/:id' do
  
  end
end
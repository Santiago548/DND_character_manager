class CharactersController < ApplicationController

  get '/character' do
    @characters = Character.all
    erb :'characters/index'
  end

  get '/character/new' do
    @players = Player.all
    @characters = Character.all
    erb :'characters/new'
  end

  post '/character/new' do
    #binding.pry
    @character = Character.create(params[:character])
    redirect to "/character/#{@character.id}"
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
    character.update(params[:character])
    redirect to "/character/#{character.id}"
  end

  delete '/character/:id' do
    character = Character.find_by_id(params[:id])
    character.destroy
    redirect to '/character'
  end
end
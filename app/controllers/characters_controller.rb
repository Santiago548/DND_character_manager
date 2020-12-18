require 'pry'

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
    @character = Character.create(params[:character])
    redirect to "/character/#{@character.id}"
  end

  get '/character/:id' do
    @character = Character.find(params[:id])
    erb :'characters/show'
  end

  get '/character/:id/edit' do
    @players = Player.all
    @character = Character.find(params[:id])
    erb :'/characters/edit'
  end

  patch '/character/:id' do
    character = Character.find_by_id(params[:id])
    if logged_in? && current_player.id == character.player_id
      character.update(params[:character])
      redirect to "/character/#{character.id}"
    else
    erb :'/characters/error'
    end
  end
  #

  delete '/character/:id' do
    character = Character.find_by_id(params[:id])
    if logged_in? && current_player.id == character.player_id
    character.destroy
    redirect to '/character'
    else
      erb :'/characters/error'
    end
  end
end

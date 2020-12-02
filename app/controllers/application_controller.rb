require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV['SESSION_SECRET']
  end

  get "/" do
    erb :welcome
  end

  helpers do
    def logged_in?
      !!session[:player_id]
    end

    def current_player
      @current_player ||= Player.find_by_id(session[:player_id])
    end

    def not_logged_in
      redirect to '/signin' unless logged_in?
    end
  end
end

require './config/environment'
require 'rack-flash'

class ApplicationController < Sinatra::Base

  use Rack::Flash

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"
  end

  get '/' do
   erb :index
  end

  helpers do

      def logged_in?
        !!current_user
      end

      def current_user
        @current_user ||= User.find_by(:id => session[:user_id]) if session[:user_id]
      end
    end

  end

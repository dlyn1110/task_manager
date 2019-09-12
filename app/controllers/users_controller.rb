class UsersController < ApplicationController

  get '/signup' do
    erb :'users/signup'
  end

  post '/signup' do

      erb :'users/signup'
        #validations failed
    end
  end

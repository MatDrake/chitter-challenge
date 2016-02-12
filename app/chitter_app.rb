ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'


class Chitter < Sinatra::Base

  enable :sessions

  set :session_secret, 'password secret'

  get '/' do
    erb :home
  end

  get '/sign-up' do
    erb :sign_up
  end

  post '/sign-up' do
    user = User.create(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation], name: params[:name], username: params[:username])
    session[:user_id] = user.id
    redirect '/'
  end

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

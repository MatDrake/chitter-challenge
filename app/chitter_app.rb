ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'


class Chitter < Sinatra::Base

  get '/' do

  end

  get '/sign-up' do
    erb :sign_up
  end

  post '/sign-up' do
    user = User.new(email: params[:email], password: params[:password], name: params[:name], username: params[:username])
    user.save
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

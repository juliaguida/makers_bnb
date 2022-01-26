require 'sinatra/base' 
require_relative './lib/space'

class MakersBnB < Sinatra::Base

  get '/' do 
    'Welcome to makersBnB' 
  end 

  get '/spaces/new' do
    erb :new
  end

  post '/spaces/new' do
    Space.create(name: params[:name], description: params[:description], price: params[:price])
    'Your space has been created'
    redirect '/space_confirmation'
  end

  get '/space_confirmation' do
    erb :space_confirmation
  end

  

 end
  





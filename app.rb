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
    Space.create(name: params[:name], description: params[:description], price: params[:price], date1: params[:date1], date2: params[:date2])
    'Your space has been created'
    redirect '/space_confirmation'
  end

  get '/space_confirmation' do
    erb :space_confirmation
  end

  get '/spaces' do
    @spaces = Space.all
    erb :index
  end
  run! if app_file == $0
end







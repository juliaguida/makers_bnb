require 'sinatra/base' 
require_relative './lib/space'

class MakersBnB < Sinatra::Base

  get '/' do 
    'Welcome to makersBnB' 
  end 

  get '/spaces' do
    @spaces = Space.all
    # @description = params[:description]
    # @name = params[:name]
    p @spaces
    erb :index
  end
  run! if app_file == $0
end






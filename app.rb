require 'sinatra/base' 
class MakersBnB < Sinatra::Base

  get '/' do 
    'Welcome to makersBnB' 
  end 

  get '/spaces' do
    @spaces = Space.all
    erb :index
  end
end





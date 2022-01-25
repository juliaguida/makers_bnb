require 'sinatra/base' 
class MakersBnB < Sinatra::Base

  get '/' do 
    'Welcome to makersBnB' 
  end 

  get '/spaces' do
    'London'
    erb :new
  end
end





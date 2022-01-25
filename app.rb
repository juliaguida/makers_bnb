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
    Space.create 
    # connection = PG.connect(dbname: 'makers_bnb')
    # connection.exec("INSERT INTO spaces (name) VALUES('#{name}')")
    # connection.exec("INSERT INTO spaces (description) VALUES('#{description})")
  end
end





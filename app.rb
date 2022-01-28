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
    # grab the url from the parans and include it as a new arg below
    Space.create(name: params[:name], description: params[:description], price: params[:price], date1: params[:date1], date2: params[:date2], url: params[:url])
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

  get '/sessions/new' do
    erb :sessions
  end 

  post '/sessions/new' do
    user = User.find_by_email(email: params[:email], password: params[:password])
    session[:user_id] = user.id
    redirect '/spaces'
  end




  run! if app_file == $0
end







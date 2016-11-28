require 'sinatra/base'

class Dataserver < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    'Hello Dataserver!'
  end

  post '/set' do

    #value = params.values
    #p session[key] = value
    #michal
    #{"name"=>"what"}
     #keys
    session[:value] = params.values
    session[:name] = params[:name]#what
    session[:key] = params.keys
  end

 get '/get' do

   p key = params[:key]

  # p params #{"key"=>"name"}


   #http://localhost:4000/get?key=name
   #http://localhost:9393/whatsup?name=bruce&surname=wayne
   #The application can handle these params in the controller as follows:

  # get '/whatsup' do
  #   "Whats up " + params[:name] + " " + params[:surname]"
  # end
   #  visit 'http://localhost:4000/set?name=garfied'
   # visit 'http://localhost:4000/get?key=name'
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

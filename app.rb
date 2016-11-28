require 'sinatra/base'

class Dataserver < Sinatra::Base
  get '/' do
    'Hello Dataserver!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra'

class Bookmarks < Sinatra::Base

  get '/' do
    "Hello, world"
  end

  get '/bookmarks' do
    erb :bookmarks
  end

  run! if app_file == $0

end

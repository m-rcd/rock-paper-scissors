require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    send_file './views/index.html'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

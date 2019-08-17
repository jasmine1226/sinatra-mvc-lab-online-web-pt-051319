require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
    @output = PigLatinizer.new(params[:text])
  end
end

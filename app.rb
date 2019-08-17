require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @output = PigLatinizer.new(params[:text])

    erb :result
  end
end

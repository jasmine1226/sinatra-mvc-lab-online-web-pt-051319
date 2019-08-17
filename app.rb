require_relative 'config/environment'

class App < Sinatra::Base

  get '/user_input' do
    erb :index
  end

  post '/' do
    @output = PigLatinizer.new(params[:text])

    erb :result
  end
end

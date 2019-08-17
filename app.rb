require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/result' do
    @output = PigLatinizer.new(params[:text])

    erb :result
  end
end

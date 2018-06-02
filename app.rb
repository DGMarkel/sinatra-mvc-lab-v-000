require_relative 'config/environment'

class App < Sinatra::Base

  post '/' do
    @piglatinized_text = PigLatinizer.new(params[:user_text])
    erb :results
  end

  get '/' do
    erb :user_input
  end


end

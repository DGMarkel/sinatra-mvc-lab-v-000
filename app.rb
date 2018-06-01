require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @piglatinized_text = Piglatinizer.new(params[:user_text])
    @piglatinized_text.word
    erb :results
  end
end

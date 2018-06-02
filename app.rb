require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  attr_reader :words

  post '/' do
    @words = PigLatinizer.new(params[:user_text])
    erb :results
  end

  get '/' do
    erb :user_input
  end


end

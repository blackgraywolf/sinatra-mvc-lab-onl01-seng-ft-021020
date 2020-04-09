require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text = params[:user_phrase]
    binding.pry
    @piglatinizer = PigLatinizer.new(@text)
       
    erb :piglatinize
  end

end 
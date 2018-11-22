require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    #recieve params

    @piglatinizer_converter = PigLatinizer.new.piglatinize(params[:user_prhase])
    erb :piglatinize_converted
  end

end

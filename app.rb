require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    #recieve params
    @giglatinizer_converter = PigLatinizer.new(params[:text])
    erb :piglatinize_converted
  end

end

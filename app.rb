require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @piglatin_text = PigLatinizer.new
    @piglatinizer = piglatin_text.piglatinize(params[:user_phrase])
    erb :results
  end
    
  
  
end
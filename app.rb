require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @piglatin_text = PigLatinizer.new
    @user_text = params[:user_text]
    erb :results
  end
    
  
  
end
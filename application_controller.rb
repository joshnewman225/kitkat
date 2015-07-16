require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  
#  get '/' do
#    erb :index
#  end
  post '/outfit' do
    #stuff goes here
    puts params
    "Yayy I know your dog"
    @outfit1 = Outfit.new(params[:zipcode], params[:sex], params[:occasion])
    erb :outfit
  end
end
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base
require_relative 'models/outfit.rb'
  
  get '/' do
    erb :index
  end
  get '/outfit' do 
    erb :outfit
  end
  post '/outfit' do
    #stuff goes here
    puts params
    "Yayy I know your dog"
    @outfit1 = Outfit.new(params[:zipcode], params[:sex], params[:occasion])
    erb :outfit
  end
end
require 'bundler'
require './models/model'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    "This is your homepage"
  end
  get '/itslit' do
   erb :index 
  end
  
  get '/staywoke' do
    erb :homepage
  end 
  
  get '/biasquiz' do 
    erb :quiz 
  end
  
  get '/racism' do
    erb :homepage
  end 
    
    
  post '/biasquiz' do 
    answers = params.values
    @total= 0
    answers.each do |answers|
      @total += answers.to_i
    puts @total
  end
   
   @combo = racismquiz(@total)
    if @combo == "reallyracist"
      erb :reallybiased
    elsif @combo == "somewhatracist"
      erb :somewhatbiased
    elsif @combo == "notracist"
     erb :notbiased
   end   
  end
  
  get '/hello/:name' do 
    @yourname = params[:name]
    "Hello #{@yourname}!"
  end
  
  get '/survey' do 
    erb:food_form 
  end 

  post '/food' do
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end 
  
  get '/math' do
    erb:math
  end 
  
  post '/math_results' do 
    if params[:first_problem] == "6"
      "Correct!"
      elsif params[:first_problem] != "6"
      "The first problem is incorrect!"
    end
    
    if params[:second_problem] == "8"
      "Correct!"
      elsif params[:second_problem] != "8"
      "The second problem is incorrect!"
    end 
    
    if params[:third_problem] == "1"
      "Correct!"
      elsif params[:third_problem] != "1"
      "The third problem is incorrect!"
    end 
    
    if params[:fourth_problem] == "5"
      "Correct!" 
      elsif params[:fourth_problem] != "5"
      "The fourth problem is incorrect!"
    end 
    
    if params[:fifth_problem] == "0"
      "Correct!"
      elsif params[:fifth_problem] != "0"
      "The fifth problem is incorrect!"
    end 
    
    
    
  end 
end 
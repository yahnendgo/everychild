require 'bundler/setup' 
require 'sinatra'
require './mandrill.rb'

get '/' do 
	erb: homepage
end

get '/about' do 
	erb :about 
end 

get '/doublenationality' do 
	erb :doublenationality
end 

get 'about' do
	erb :about
end 

get 'mail' do 
	erb :mail 

post 'mail' do
	puts params.inspect
	send_mail params[:mail, params], params[:messagebody]
end 

require 'bundler/setup' 
require 'sinatra'
require 'mandrill'

get '/' do 
	@title = "Home"
	erb :homepage
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

get 'real' do
	erb :real
end

get 'community' do
	erb :community
end

get 'mail' do 
	erb :mail 
end

get 'donate' do
	erb :donate
end

post 'mail' do
	puts params.inspect
	send_mail params[:mail, params], params[:messagebody]
end 

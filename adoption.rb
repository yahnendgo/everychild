require 'bundler/setup' 
require 'sinatra'
require 'mandrill'

get '/' do 
	@title = "Home"
	erb :homepage
end

get '/real' do
	@title = "Real Deal"
	erb :real
end

get '/doublenationality' do 
	@title = "Double Nationality"
	erb :doublenationality
end 

get '/ages' do
	@title = "All Ages"
	erb :ages
end 

get '/community' do
	@title = "Community"
	erb :community
end

get '/about' do 
	@title = "About US"
	erb :about 
end 

get '/contact' do 
	erb :contact 
end

post '/contact' do
	puts params.inspect
	send_mail params[:contact, params], params[:messagebody]
end 
require 'mandrill'

def send_mail adress, text 
	m = Mandrill::API.new
	message = {  
		:subject=> "Hello from the Mandrill API", 
		:from_name=> "Roma",  
		:text=> text ,
		:to=>[{:email=> adress,
			:name=> "nozomi"}], 
			:from_email=>"nozomi.morel@gmail.com" 
		}

	sending = m.messages.send message 
	puts sending
end
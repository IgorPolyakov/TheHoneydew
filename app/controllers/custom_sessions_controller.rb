require 'json'


class CustomSessionsController < Devise::SessionsController
	def create
		super 
		puts "\n\n‿︵‿ヽ(°□° )ノ︵‿︵Получилось!‿︵‿ヽ(°□° )ノ︵‿︵\n"
		#Ipstack::API.check
		p current_user.current_sign_in_ip


	end
end
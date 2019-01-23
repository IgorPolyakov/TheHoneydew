# frozen_string_literal: true
require 'net/http'
require 'json'
# Main devise class
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :timeoutable
 #has_many :inspectors#, dependent: :destroy and :edit
 #has_many :checks#, dependent: :destroy and :edit
 #has_many :reports#, dependent: :destroy and :edit
 #has_many :people#, dependent: :destroy and :edit
 #has_many :organizations#, dependent: :destroy and :edit
#=begin
 	def lantitude
 		make_geo(user.ip, "lan")
 	end

 	def longtitude
 		make_geo(user.ip, "lon")
 	end

 	private

 	def make_geo(ip_adress, lan_or_lon)
 		#тут код с преобразованиями
 		if (lan_or_lon == "lan")
	 		uri = URI('http://api.ipstack.com/check
	 			? access_key = d7349c126fc66c4abde362e4a04ce4f1
	 			& output = json')
			req = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json')
			req.body = {param1: '', param2: ''}.to_json
			res = Net::HTTP.start(uri.hostname, uri.port) do |http|
				http.request(req)
			end
	    	puts "response #{res.body}"
	    elsif (lan_or_lon == "lon")
	    	uri = URI('http://api.ipstack.com/check
	 			? access_key = d7349c126fc66c4abde362e4a04ce4f1
	 			& output = json')
			req = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json')
			req.body = {param1: '', param2: ''}.to_json
			res = Net::HTTP.start(uri.hostname, uri.port) do |http|
				http.request(req)
			end
	    	puts "response #{res.body}"
	    end
 	end
#=end
end

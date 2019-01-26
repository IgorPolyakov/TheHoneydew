# frozen_string_literal: true

require 'json'
require 'ipstack/api'

class CustomSessionsController < Devise::SessionsController
  def create
    super
    ip = current_user.current_sign_in_ip.to_s
    result = Ipstack::API.standard(ip)
    data_hash = JSON.parse(result.to_json)
    if !data_hash['latitude'].nil? || !data_hash['longitude'].nil?
      latitude = data_hash['latitude'].to_f
      longitude = data_hash['longitude'].to_f
    else
      latitude = 0
      longitude = 0
    end

    current_user.update(latitude_sign_in: latitude, longitude_sign_in: longitude)
  end
end

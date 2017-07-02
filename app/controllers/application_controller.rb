class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  # force_ssl if: :ssl_configured?
  # def ssl_configured?
  #   !Rails.env.development?
  # end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # force_ssl if: :ssl_configured?
  # def ssl_configured?
  #   !Rails.env.development?
  # end
end

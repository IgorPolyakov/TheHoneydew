# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_locale
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized  

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    Rails.application.routes.default_url_options[:locale] = I18n.locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  #def pundit_user
  #  AuthorizationContext.new(current_user)
  #end

  def user_not_authorized
    flash[:alert] = 'У вас нет прав сделать это.'
    redirect_back(fallback_location: root_path)
  end

end

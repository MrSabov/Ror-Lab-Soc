class ApplicationController < ActionController::Base
  
  protect_from_forgery prepend: true
  add_flash_types :success, :danger, :info, :warning

  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  before_action :set_locale

  private
    
  def configure_permitted_parameters 
       devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :birthday, :email, :password, :remember_me, :avatar]) 
       devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :birthday, :about, :update, :email, :password, :remember_me, :avatar]) 
    end

    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end

    def default_url_options(options = {})
      { locale: I18n.locale }.merge options

  end   

end

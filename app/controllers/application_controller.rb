class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters

    if user_signed_in?
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name, :document, :avatar])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :last_name, :document, :avatar])
    else cadet_signed_in?
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name, :document, :profile_photo, :state])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :last_name, :document, :profile_photo, :state])
    end
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name, :document, :avatar])
    #devise_parameter_sanitizer.permit(:account_update, keys: [:name, :last_name, :document, :avatar])
    
  end
end

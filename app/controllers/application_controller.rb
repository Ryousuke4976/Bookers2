class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    "/user/#{current_user.id}"
  end
  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sigm_uup, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image])
  end
end

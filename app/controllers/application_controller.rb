class ApplicationController < ActionController::Base
  before_action :configure_permitted_parametres, if: :devise_controller?

  protected

  def configure_permitted_parametres
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username])
  end
end

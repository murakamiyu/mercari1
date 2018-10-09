class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :telephone, :family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :city, :address1, :address2])
  end
end

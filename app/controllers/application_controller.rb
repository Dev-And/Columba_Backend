class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs =  [:phone, :email, :name,  :password, :password_confirmation]
    # added_attrs1 = [:email,  :password, :token]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    # devise_parameter_sanitizer.permit :sign_in, keys: added_attrs1
  end
end

class ApplicationController < ActionController::Base

 # Prevent CSRF attacks by raising an exception. For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  # devise authorization
  # For additional fields in app/views/devise/registrations/new.html.erb
  # For additional in app/views/devise/registrations/edit.html.erb
  def configure_permitted_parameters
    update_attrs = %i[password password_confirmation current_password]
    devise_parameter_sanitizer.permit :account_update, keys: update_attrs
    #    devise_parameter_sanitizer.permit(:sign_up, keys: %i[apellidos nombre])
    #devise_parameter_sanitizer.permit(:account_update, keys: %i[apellidos nombre])
  end

  def index
  end

  private

end

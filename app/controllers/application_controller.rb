class ApplicationController < ActionController::Base
    before_action :configure_devise_parameters, if: :devise_controller?
    add_flash_types :info, :error, :warning, :success, :primary, :secondary, :danger, :light, :dark

    def configure_devise_parameters
      devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :is_alive, :email, :password, :password_confirmation)}
      devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :is_alive, :email, :password, :password_confirmation)}
    end
end

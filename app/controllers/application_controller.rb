class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :update_allowed_parameters, if: :devise_controller?
  
    protected
  
    def update_allowed_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
      devise_parameter_sanitizer.permit(:account_update) do |u|
        u.permit(:name, :email, :password, :password_confirmation, :current_password)
      end
    end

    def after_sign_in_path_for(resource)
        privacy_policy_path
    end
  
    def after_sign_out_path_for(resource_or_scope)
        root_path
    end
end

class ApplicationController < ActionController::Base

    protected

    def after_sign_in_path_for(resource)
        privacy_policy_path
    end
  
    def after_sign_out_path_for(resource_or_scope)
        root_path
      end
end

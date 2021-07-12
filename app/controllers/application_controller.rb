class ApplicationController < ActionController::Base
  before_action :authenticate_account!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    return profile_path(id: resource.profile)
  end

  def after_sign_up_path_for(resource)
    return profile_path(id: resource.profile)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [{ profile_attributes: [:full_name] }])
  end
end

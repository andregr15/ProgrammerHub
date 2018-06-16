class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  #before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  # def sign_up_params
  #   params.require(:user).permit(:name, :description, :email, :password, :password_confirmation, :avatar)
  # end

  # def account_update_params
  #   params.require(:user).permit(:name, :description, :email, :password, :password_confirmation, :current_password, :avatar)
  # end

  
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :description, :email, :password, :password_confirmation, :avatar])

  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:login, :username, :email, :password, :remember_me])

  #   devise_parameter_sanitizer.permit(:account_update, keys: [:account_update, keys: [:name, :description, :email, :password, :password_confirmation, :current_password, :avatar]])
  # end

  # def after_sign_in_path_for(current_user)
  #   posts_path
  # end

  # def after_sign_up_path_for(current_user)
  #   posts_path
  # end
end

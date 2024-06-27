class Public::RegistrationsController < Devise::RegistrationsController
  # No need to redefine the new method, Devise handles it

  # If additional params are required, uncomment and modify the following:
  # before_action :configure_sign_up_params, only: [:create]

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :first_name_kana, :last_name_kana, :user_name])
  end
end

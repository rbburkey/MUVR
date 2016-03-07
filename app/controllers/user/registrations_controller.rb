class User::RegistrationsController < Devise::RegistrationsController


  private

  def sign_up_params
    params.require(:user).permit(:email, :username, :avatar, :first_name, :last_name, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :avatar, :first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end

class RegistrationsController < Devise::RegistrationsController


  private

  def sign_up_params
    params.require(:mover).permit(:first_name, :last_name, :avatar, :user_name, :email, :truck_available, :license, :service_area, :password, :password_confirmation)
    params.require(:user).permit(:email, :avatar, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:mover).permit(:first_name, :last_name, :avatar, :user_name, :email, :truck_available, :license, :service_area, :password, :password_confirmation, :current_password)
    params.require(:user).permit(:email, :avatar, :password, :password_confirmation, :current_password)

>>>>>>> robbie
  end
end

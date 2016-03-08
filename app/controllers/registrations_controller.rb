class RegistrationsController < Devise::RegistrationsController


  private

  def sign_up_params
    params.require(:mover).permit(:first_name, :last_name, :avatar, :bio, :user_name, :email, :truck_available, :license, :service_area, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:mover).permit(:first_name, :last_name, :avatar, :bio, :user_name, :email, :truck_available, :license, :service_area, :password, :password_confirmation, :current_password)
  end
end

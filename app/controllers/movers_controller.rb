class MoversController < ApplicationController
  # before_action :set_mover, only: [:]
  def portal
    @mover = Mover.find_by(params[:id])
  end

  def profile

  end






private
  # Use callbacks to share common setup or constraints between actions.
  def set_mover
    @mover = mover.find(params[:id])
  end

  def mover_params
    params.require(:mover).permit(:first_name, :last_name, :avatar, :user_name, :email, :truck_available, :license, :service_area, :password, :password_confirmation)
>>>>>>> robbie
  end

end

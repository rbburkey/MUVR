class MoversController < ApplicationController
  # before_action :set_mover, only: [:]
  def portal
    @users = User.all
    @mover = current_mover
  end

  def profile
@mover = current_mover
  end
end





# private
#   # Use callbacks to share common setup or constraints between actions.
#   def set_mover
#     @mover = mover.find(params[:id])
#   end
#
#   def mover_params
#     params.require(:mover).permit(:first_name, :last_name, :avatar, :user_name, :email, :truck_available, :license, :service_area, :password, :password_confirmation)
#   end
#
# end

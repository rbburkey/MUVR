class MoversController < ApplicationController

before_action :set_mover, only: [:profile]


  def portal
    @users = User.all
    @mover = current_mover
    @reviews=Review.all
    @jobs = Job.where(area: current_mover.service_area)

  end

  def profile
    @reviews=Review.all
  end


def all_movers
  @movers = Mover.all
end


private
  def set_mover
    @mover = Mover.find(params[:id])
  end

  def mover_params
    params.require(:mover).permit(:avatar)
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

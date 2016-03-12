class MoversController < ApplicationController
before_action :set_mover, only: [:profile]



  def portal
    @users = User.all
    @mover = current_mover
    @reviews=Review.all
    @jobs = Job.where(area: current_mover.service_area)
    @jobapps = Jobapp.where(mover_id: current_mover.id)
    @job = Job.where(mover_id: current_mover.id)

  end

  def profile
    @reviews=Review.all
  end


def all_movers
  @movers = Mover.all
  if params[:search]
 @movers = Mover.search(params[:search])
  else
    @movers = Mover.all
  end
end

def organizers
  @movers = Mover.all
end

def mover_apps
  @jobapps = Jobapp.where(mover_id: current_mover.id)
end


private
  def set_mover
    @mover = Mover.find(params[:id])
  end

  def mover_params
    params.require(:mover).permit(:avatar, :service_area)
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

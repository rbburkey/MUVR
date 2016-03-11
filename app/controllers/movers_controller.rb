class MoversController < ApplicationController

before_action :set_mover, only: [:profile]


  def portal
    @users = User.all
    @mover = current_mover
    @reviews=Review.all
    @jobs = Job.where(area: current_mover.service_area)
  end

  #Returning any kind of identification you want for the model
  def name
    return "You should add method :name in your Messageable model"
  end

  #Returning the email address of the model if an email should be sent for this object (Message or Notification).
  #If no mail has to be sent, return nil.
  def mailboxer_email(object)
    #Check if an email should be sent for that object
    #if true
    return "define_email@on_your.model"
    #if false
    #return nil
  end

  def profile
    @reviews=Review.all
  end


def all_movers
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

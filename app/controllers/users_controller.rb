class UsersController < ApplicationController
  def portal
    @user = current_user
    @movers = Mover.all
  end

  def profile
    @user = current_user
  end

  def create
    @user = User.new(user_params)
  end

  def user_jobs
    @jobs = Job.where(user_id: current_user.id)
  end

  def movers_area
    @movers = Mover.where(service_area: current_user.user_area)
  end

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.
private

  def user_params
    params.require(:user).permit(:avatar)
  end


end

class UsersController < ApplicationController
before_action :set_user, only: [:profile]

  def portal
    @user = current_user
    @reviews=Review.all
    @movers=Mover.all
    @jobs = Job.where(user_id: current_user.id)
    @jobapp = Jobapp.where(:accepted => true)
    # @jobapp = Jobapp.where(user_id: current_user)


  end

  #Returning any kind of identification you want for the model


  def profile
  @reviews=Review.all
  end

  def index
    @users = User.all
  end

  def all_users
    @users = User.all
  end

  def create
    @user = User.new(user_params)
  end

  def user_apps
    @job = Job.find(params[:job])
  end

  private

  def user_jobs
  @jobs = Job.where(user_id: current_user.id)

  end


  def movers_area
    @movers = Mover.where(service_area: current_user.user_area)
  end


  # Use strong_parameters for attribute whitelisting
  def set_user
    @user = User.find(params[:id])
  end

  # Be sure to update your create() and update() controller methods.s
  def user_params
    params.require(:user).permit(:avatar)
  end


end

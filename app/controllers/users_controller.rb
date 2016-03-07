class UsersController < ApplicationController
before_action :set_user, only: [:profile]

  def portal
    @user= current_user
    @movers = Mover.all
    @reviews=Review.all


  end

# SHOW
  def profile
        @reviews=Review.all
  end

  def index
    @users = User.all


  end



  def create
    @user = User.new(user_params)
  end



  private

  # Use strong_parameters for attribute whitelisting
  def set_user
    @user = User.find(params[:id])
  end

  # Be sure to update your create() and update() controller methods.

  def user_params
    params.require(:user).permit(:avatar)
  end


end

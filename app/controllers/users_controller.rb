class UsersController < ApplicationController
before_action :set_user, only: [:profile]
  def portal
    @user= current_user
  end

# SHOW
  def profile

  end

  def index
    @users = User.all


  end

  private
  def set_user
    @user = User.find(params[:id])
  end

end

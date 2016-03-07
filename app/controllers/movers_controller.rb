class MoversController < ApplicationController
before_action :set_mover, only: [:profile]

  def portal
    @users = User.all
    @mover = current_mover
    @reviews=Review.all
  end

  def profile
    @reviews=Review.all
  end


private
  def set_mover
    @mover = Mover.find(params[:id])
  end

end

class MoversController < ApplicationController
before_action :set_mover, only: [:profile]

  def portal
    @users = User.all
    @mover = current_mover
  end

  def profile
  end


private
  def set_mover
    @mover = Mover.find(params[:id])
  end

end

class MoversController < ApplicationController
  def portal
    @users = User.all
    @mover = current_mover
  end

  def profile
    @mover = current_mover
  end

end

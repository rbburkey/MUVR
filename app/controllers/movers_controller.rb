class MoversController < ApplicationController
  def portal
    @movers = Mover.all
    @mover = current_mover

  end

  def profile
  end

  def create
    @mover = Mover.new(user_params)
  end

end

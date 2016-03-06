class MoversController < ApplicationController
  def portal
    @mover = current_mover
  end

  def profile
    @movers = Mover.all
    @mover = current_mover
  end

end

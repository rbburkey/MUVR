class ProfilesController < ApplicationController

  def show
    @mover = Mover.find_by(user_name: params[:user_name])
  end
  
end

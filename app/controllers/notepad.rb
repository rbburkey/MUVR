@mover = Mover.find_by(user_name: params[:user_name])



get 'movers/:id' => 'movers#profile'

class MoversController < ApplicationController
  def portal
    @mover = current_mover
  end

  def profile
    @movers = Mover.all
    @mover = current_mover
  end

end

class MoversController < ApplicationController
  def portal
    @mover = current_mover
  end

  def profile
    @mover = Mover.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mover
      @mover = Mover.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mover_params
      params.require(:mover).permit(:first_name, :last_name, :user_name, :email, :truck_available, :license, :service_area)
    end

end

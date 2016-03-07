class JobappsController < ApplicationController
  before_action :set_jobapp, only: [:show, :edit, :update, :destroy]

  # GET /jobapps
  # GET /jobapps.json
  def index
    @jobapps = Jobapp.all
  end

  # GET /jobapps/1
  # GET /jobapps/1.json
  def show
  end

  # GET /jobapps/new
  def new
    @jobapp = Jobapp.new
  end

  # GET /jobapps/1/edit
  def edit
  end

  # POST /jobapps
  # POST /jobapps.json
  def create
    @jobapp = Jobapp.new(jobapp_params)

    respond_to do |format|
      if @jobapp.save
        format.html { redirect_to @jobapp, notice: 'Jobapp was successfully created.' }
        format.json { render :show, status: :created, location: @jobapp }
      else
        format.html { render :new }
        format.json { render json: @jobapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobapps/1
  # PATCH/PUT /jobapps/1.json
  def update
    respond_to do |format|
      if @jobapp.update(jobapp_params)
        format.html { redirect_to @jobapp, notice: 'Jobapp was successfully updated.' }
        format.json { render :show, status: :ok, location: @jobapp }
      else
        format.html { render :edit }
        format.json { render json: @jobapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobapps/1
  # DELETE /jobapps/1.json
  def destroy
    @jobapp.destroy
    respond_to do |format|
      format.html { redirect_to jobapps_url, notice: 'Jobapp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobapp
      @jobapp = Jobapp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobapp_params
      params.require(:jobapp).permit(:message)
    end
end

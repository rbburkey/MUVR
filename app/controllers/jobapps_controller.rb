class JobappsController < ApplicationController
  before_action :set_jobapp, only: [:show, :edit, :update, :destroy]
  before_filter :mover_only, only: [:create, :edit, :destroy, :new]
  before_action :job_load, only: [:create, :new]



  # GET /jobapps
  # GET /jobapps.json
  def index
    @jobapps = Jobapp.all
  end

  def mover_only
    unless mover_signed_in?
       flash[:notice] = "Access Denied."
      #  where do we want to redirects
       redirect_to :jobs_area
    end
  end

  # GET /jobapps/1
  # GET /jobapps/1.json
  def show

  end

  # GET /jobapps/new
  def new
@jobapp = @job.jobapps.build
  end


  # GET /jobapps/1/edit
  def edit
  end

  # POST /jobapps
  # POST /jobapps.json
  def create

    @jobapp = @job.jobapps.build(jobapp_params)
 @jobapp.user_id = @job.user_id
        if mover_signed_in?
          @jobapp.mover_id = current_mover.id

        else
           redirect_to jobs
        end



    respond_to do |format|
      if @jobapp.save
        format.html { redirect_to @jobapp , notice: 'Jobapp was successfully created.' }
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
      format.html { redirect_to job_jobapps_url, notice: 'Jobapp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobapp
      @jobapp = Jobapp.find(params[:id])
    end

    def job_load
      @job = Job.find(params[:job_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def jobapp_params
      params.require(:jobapp).permit(:message, :accepted, :not_accepted)
    end
end

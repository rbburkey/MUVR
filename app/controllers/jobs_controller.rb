class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_filter :client_only, only:[:new, :create, :update, :destroy, :edit]



  # GET /jobs
  # GET /jobs.json
  def index

    @jobs = Job.all
    @hash = Gmaps4rails.build_markers(@jobs) do |job, marker|
  marker.lat job.latitude
  marker.lng job.longitude
  marker.infowindow job.name
   end
  end

def show
  # Gmaps.store.markers.filter(function(m) { return m.serviceObject.id == id; })[0]
  @job = Job.find(params[:id])
#@jobs = Job.where(user_id: current_user.id)
  @hash = Gmaps4rails.build_markers([@job]) do |job, marker|
marker.lat job.latitude
marker.lng job.longitude
marker.infowindow job.name
end
end

def map
  @jobs = Job.all
  @hash = Gmaps4rails.build_markers(@jobs) do |job, marker|
marker.lat job.latitude
marker.lng job.longitude
marker.infowindow job.name
 end
end


  def client_only
    unless user_signed_in?
       flash[:notice] = "Access denied."
       redirect_to :jobs
    end
  end


  def user_apps
    @jobapp = Jobapp.where(user_id: current_user.id)
  end


  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)
    # to index the user_id column in jobs table
    if user_signed_in?
      @job.user_id = current_user.id
    end

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:latitude, :longitude, :name, :description, :area, :image)
    end
end

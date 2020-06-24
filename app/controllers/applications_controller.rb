class ApplicationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_application, only: [:show, :edit, :update, :destroy]

  # GET /applications
  # GET /applications.json
  def index
    if current_user.admin?
      @applications = Application.all
    else
      @applications = current_user.applications
    end
  end

  # GET /applications/1
  # GET /applications/1.json
  def show
    @document = Document.find(@application.document).try(:name)
    @college = College.find(@application.college_id).try(:name) unless @application.college_id.nil?
    @faculty = Faculty.find(@application.faculty_id).try(:name) unless @application.faculty_id.nil?
    @institution = Institution.find(@application.institution_id).try(:name)
  end

  # GET /applications/new
  def new
    @application = current_user.applications.new
    @regions = CS.states(:gh)
  end

  # GET /applications/1/edit
  def edit
  end

  # POST /applications
  # POST /applications.json
  def create
    @application = current_user.applications.new(application_params)

    respond_to do |format|
      if @application.save
        format.html { redirect_to @application, notice: 'Application was successfully created.' }
        format.json { render :show, status: :created, location: @application }
      else
        format.html { render :new }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applications/1
  # PATCH/PUT /applications/1.json
  def update
    respond_to do |format|
      if @application.update(application_params)
        format.html { redirect_to @application, notice: 'Application was successfully updated.' }
        format.json { render :show, status: :ok, location: @application }
      else
        format.html { render :edit }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applications/1
  # DELETE /applications/1.json
  def destroy
    @application.destroy
    respond_to do |format|
      format.html { redirect_to applications_url, notice: 'Application was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  def pending
    if current_user.admin?
      @applications = Application.all.where("processed is false")
    else
      @applications = current_user.applications.where("processed is false")
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application
      @application = Application.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
      params.require(:application).permit(:firstname, :lastname, :dob, :enrolled, :college_id, :faculty_id,
                                          :completed, :express, :document, :quantity, :studentid,
                                          :department, :college, :school, :phone, :programme, :institution_id,
                                          :address, :reason, :type, :processed, :acceptance_letter, :student_id, :longitude, :latitude, document_ids: [])
    end
end

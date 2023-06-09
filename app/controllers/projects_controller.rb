class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy, :assign_employee, :unassign_employee]

  # GET /projects or /projects.json
  def index
    @projects = Project.all.page(params[:page])
  end

  # GET /projects/1 or /projects/1.json
  def show
    @project = Project.find(params[:id])
    @employee = @project.employees


  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects or /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to project_url(@project), alert: "Project was successfully created." }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1 or /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to project_url(@project), alert: "Project was successfully updated." }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1 or /projects/1.json
  def destroy
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url, alert: "Project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def employees
    @project = Project.find(params[:id])
    @employees = @project.employees
  end

  def assign_employee
    @project = Project.find(params[:id])
    @employee = Employee.find(params[:employee_id])

    unless @project.employees.include?(@employee)
      @project.employees << @employee
      flash[:alert] = "#{@employee.name} assigned to #{@project.name} successfully."
    else
      flash[:alert] = "#{@employee.name} is already assigned to the #{@project.name} project."
    end

    redirect_to @project
  end

  def unassign_employee
    @project = Project.find(params[:id])
    @employee = Employee.find(params[:employee_id])

    if @project.employees.include?(@employee)
      @project.employees.delete(@employee)
      flash[:alert] = "#{@employee.name} unassigned from #{@project.name} project successfully."
    else
      flash[:alert] = "#{@employee.name} is not assigned to the #{@project.name} project."
    end

    redirect_to @project
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:name)
    end
end

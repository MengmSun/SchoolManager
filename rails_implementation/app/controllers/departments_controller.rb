class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]
  around_action :rescue_from_fk_constraint, only: [:destroy]
  before_action :get_campus

  # GET /departments
  # GET /departments.json
  def index
    if @campus
      @q = @campus.departments.ransack(params[:q])
    else
      @q = Department.ransack(params[:q])
    end
    @departments = @q.result.page(params[:page]).per(params[:limit])
  end

  # GET /departments/1
  # GET /departments/1.json
  def show
  end

  # GET /departments/new
  def new
    @department = Department.new
    if @campus
      @department.campus_id = @campus.id
    end
  end

  # GET /departments/1/edit
  def edit
  end

  # POST /departments
  # POST /departments.json
  def create
    @department = Department.new(department_params)
    if @department.campus_id.nil? && params[:campus_id]
      @department.campus_id = params[:campus_id]
    end

    respond_to do |format|
      if @department.save
        format.html { redirect_to @department, notice: 'Department was successfully created.' }
        format.json { render :show, status: :created, location: @department }
      else
        format.html { render :new }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departments/1
  # PATCH/PUT /departments/1.json
  def update
    respond_to do |format|
      if @department.update(department_params)
        format.html { redirect_to @department, notice: 'Department was successfully updated.' }
        format.json { render :show, status: :ok, location: @department }
      else
        format.html { render :edit }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departments/1
  # DELETE /departments/1.json
  def destroy
    @department.destroy
    respond_to do |format|
      format.html { redirect_to departments_url, notice: 'Department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department
      @department = Department.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def department_params
      params.require(:department).permit(:code, :name, :address, :teacher_id, :campus_id)
    end

    def rescue_from_fk_constraint
      begin
        yield
      rescue  ActiveRecord::InvalidForeignKey
        respond_to do |format|
          @department.errors.add(:department, "is referenced!")
          format.html { redirect_to departments_url }
          format.json { render json: @department.errors, status: :unprocessable_entity }
        end
      end
    end

    def get_campus
      if params[:campus_id]
        @campus = Campus.find(params[:campus_id])
      end
    end
end

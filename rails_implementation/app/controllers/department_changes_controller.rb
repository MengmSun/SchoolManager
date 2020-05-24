class DepartmentChangesController < ApplicationController
  before_action :set_department_change, only: [:show, :edit, :update, :destroy]
  before_action :get_student

  # GET /department_changes
  # GET /department_changes.json
  def index
    if @student
      @q = @student.department_changes.ransack(params[:q])
    else
      @q = DepartmentChange.ransack(params[:q])
    end
    @department_changes = @q.result.page(params[:page]).per(params[:limit])
  end

  # GET /department_changes/1
  # GET /department_changes/1.json
  def show
  end

  # GET /department_changes/new
  def new
    @department_change = DepartmentChange.new
    if @student
      @department_change.student_id = @student.id
    end
  end

  # GET /department_changes/1/edit
  def edit
  end

  # POST /department_changes
  # POST /department_changes.json
  def create
    @department_change = DepartmentChange.new(department_change_params)
    if @department_change.student_id.nil? && params[:student_id]
      @department_change.student_id = params[:student_id]
    end

    respond_to do |format|
      if @department_change.save
        format.html { redirect_to @department_change, notice: 'Department change was successfully created.' }
        format.json { render :show, status: :created, location: @department_change }
      else
        format.html { render :new }
        format.json { render json: @department_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /department_changes/1
  # PATCH/PUT /department_changes/1.json
  def update
    respond_to do |format|
      if @department_change.update(department_change_params)
        format.html { redirect_to @department_change, notice: 'Department change was successfully updated.' }
        format.json { render :show, status: :ok, location: @department_change }
      else
        format.html { render :edit }
        format.json { render json: @department_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /department_changes/1
  # DELETE /department_changes/1.json
  def destroy
    @department_change.destroy
    respond_to do |format|
      format.html { redirect_to department_changes_url, notice: 'Department change was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department_change
      @department_change = DepartmentChange.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def department_change_params
      params.require(:department_change).permit(:youth_league_status, :code, :student_id, :happened_at, :new_clazz_code, :original_clazz_code)
    end

    def get_student
      if(params[:student_id])
        @student = Student.find(params[:student_id])
      end
    end
end

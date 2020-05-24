class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]
  around_action :rescue_from_fk_constraint, only: [:destroy]
  before_action :get_department

  # GET /teachers
  # GET /teachers.json
  def index
    if @department
      @q = @department.teachers.ransack(params[:q])
    else
      @q = Teacher.ransack(params[:q])
    end
    @teachers = @q.result.page(params[:page]).per(params[:limit])
  end

  # GET /teachers/1
  # GET /teachers/1.json
  def show
  end

  # GET /teachers/new
  def new
    @teacher = Teacher.new
    if @department
      @teacher.department_id = @department.id
    end
  end

  # GET /teachers/1/edit
  def edit
  end

  # POST /teachers
  # POST /teachers.json
  def create
    @teacher = Teacher.new(teacher_params)

    respond_to do |format|
      if @teacher.save
        format.html { redirect_to @teacher, notice: 'Teacher was successfully created.' }
        format.json { render :show, status: :created, location: @teacher }
      else
        format.html { render :new }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teachers/1
  # PATCH/PUT /teachers/1.json
  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to @teacher, notice: 'Teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers/1
  # DELETE /teachers/1.json
  def destroy
    @teacher.destroy
    respond_to do |format|
      format.html { redirect_to teachers_url, notice: 'Teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_params
      params.require(:teacher).permit(:work_id, :department_id, :title, :id_number, :id_type, :name, :gender, :birthday, :nationality, :home_address, :home_postcode, :phone_number, :email)
    end

    def rescue_from_fk_constraint
      begin
        yield
      rescue  ActiveRecord::InvalidForeignKey
        respond_to do |format|
          @teacher.errors.add(:teacher, "is referenced!")
          format.html { redirect_to teachers_url }
          format.json { render json: @teacher.errors, status: :unprocessable_entity }
        end
      end
    end

    def get_department
      if params[:department_id]
        @department = Department.find(params[:department_id])
      end
    end
end

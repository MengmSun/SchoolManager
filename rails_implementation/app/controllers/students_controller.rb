class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :undergraduate_student_should_not_destroy, only: [:destroy]
  before_action :get_clazz

  # GET /students
  # GET /students.json
  def index
    if @clazz
      @q = @clazz.students.ransack(params[:q])
    else
      @q = Student.ransack(params[:q])
    end
    @students = @q.result.page(params[:page]).per(params[:limit])
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
    if @clazz
      @student.clazz_id = @clazz.id
    end
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_params
      params.require(:student).permit(:student_id, :clazz_id, :id_number, :id_type, :name, :gender, :birthday, :nationality, :home_address, :home_postcode, :phone_number, :email)
    end

    def undergraduate_student_should_not_destroy
      if @student.clazz.created_at + 4.years > Time.now
        respond_to do |format|
          @student.errors.add(:student, "is not graduated!")
          format.html { redirect_to students_url }
          format.json { render json: @student.errors, status: :unprocessable_entity }
        end
      end
    end

    def get_clazz
      if params[:clazz_id]
        @clazz = Clazz.find(params[:clazz_id])
      end
    end
end

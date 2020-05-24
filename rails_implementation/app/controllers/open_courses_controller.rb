class OpenCoursesController < ApplicationController
  before_action :set_open_course, only: [:show, :edit, :update, :destroy]
  around_action :rescue_from_fk_constraint
  before_action :get_teacher

  # GET /open_courses
  # GET /open_courses.json
  def index
    if @teacher
      @q = @teacher.open_courses.ransack(params[:q])
    else
      @q = OpenCourse.ransack(params[:q])
    end
    @open_courses = @q.result.page(params[:page]).per(params[:limit])
  end

  # GET /open_courses/1
  # GET /open_courses/1.json
  def show
  end

  # GET /open_courses/new
  def new
    @open_course = OpenCourse.new
    if @teacher
      @open_course.teacher_id = @teacher.id
    end
  end

  # GET /open_courses/1/edit
  def edit
  end

  # POST /open_courses
  # POST /open_courses.json
  def create
    @open_course = OpenCourse.new(open_course_params)

    respond_to do |format|
      if @open_course.save
        format.html { redirect_to @open_course, notice: 'Open course was successfully created.' }
        format.json { render :show, status: :created, location: @open_course }
      else
        format.html { render :new }
        format.json { render json: @open_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /open_courses/1
  # PATCH/PUT /open_courses/1.json
  def update
    respond_to do |format|
      if @open_course.update(open_course_params)
        format.html { redirect_to @open_course, notice: 'Open course was successfully updated.' }
        format.json { render :show, status: :ok, location: @open_course }
      else
        format.html { render :edit }
        format.json { render json: @open_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_courses/1
  # DELETE /open_courses/1.json
  def destroy
    @open_course.destroy
    respond_to do |format|
      format.html { redirect_to open_courses_url, notice: 'Open course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_course
      @open_course = OpenCourse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def open_course_params
      params.require(:open_course).permit(:course_id, :teacher_id, :term, :schedule)
    end

    def rescue_from_fk_constraint
      begin
        yield
      rescue  ActiveRecord::InvalidForeignKey
        respond_to do |format|
          @open_course.errors.add(:open_course, "is referenced!")
          format.html { redirect_to open_courses_url }
          format.json { render json: @open_course.errors, status: :unprocessable_entity }
        end
      end
    end

    def get_teacher
      if params[:teacher_id]
        @teacher = Teacher.find(params[:teacher_id])
      end
    end
end

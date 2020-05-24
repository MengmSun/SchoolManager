class CourseSelectionsController < ApplicationController
  before_action :set_course_selection, only: [:show, :edit, :update, :destroy]
  before_action :get_student

  # GET /course_selections
  # GET /course_selections.json
  def index
    if @student
      @q = @student.course_selections.ransack(params[:q])
    else
      @q = CourseSelection.ransack(params[:q])
    end
    @course_selections = @q.result.page(params[:page]).per(params[:limit])
  end

  # GET /course_selections/1
  # GET /course_selections/1.json
  def show
  end

  # GET /course_selections/new
  def new
    @course_selection = CourseSelection.new
    if @student
      @course_selection.student_id = @student.id
    end
  end

  # GET /course_selections/1/edit
  def edit
  end

  # POST /course_selections
  # POST /course_selections.json
  def create
    @course_selection = CourseSelection.new(course_selection_params)

    respond_to do |format|
      if @course_selection.save
        format.html { redirect_to @course_selection, notice: 'Course selection was successfully created.' }
        format.json { render :show, status: :created, location: @course_selection }
      else
        format.html { render :new }
        format.json { render json: @course_selection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_selections/1
  # PATCH/PUT /course_selections/1.json
  def update
    respond_to do |format|
      if @course_selection.update(course_selection_params)
        format.html { redirect_to @course_selection, notice: 'Course selection was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_selection }
      else
        format.html { render :edit }
        format.json { render json: @course_selection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_selections/1
  # DELETE /course_selections/1.json
  def destroy
    @course_selection.destroy
    respond_to do |format|
      format.html { redirect_to course_selections_url, notice: 'Course selection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_selection
      @course_selection = CourseSelection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_selection_params
      params.require(:course_selection).permit(:open_course_id, :student_id, :score, :term)
    end

    def get_student
      if(params[:student_id])
        @student = Student.find(params[:student_id])
      end
    end
end

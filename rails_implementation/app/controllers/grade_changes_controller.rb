class GradeChangesController < ApplicationController
  before_action :set_grade_change, only: [:show, :edit, :update, :destroy]
  before_action :get_student

  # GET /grade_changes
  # GET /grade_changes.json
  def index
    if @student
      @q = @student.grade_changes.ransack(params[:q])
    else
      @q = GradeChange.ransack(params[:q])
    end
    @grade_changes = @q.result.page(params[:page]).per(params[:limit])
  end

  # GET /grade_changes/1
  # GET /grade_changes/1.json
  def show
  end

  # GET /grade_changes/new
  def new
    @grade_change = GradeChange.new
    if @student
      @grade_change.student_id = @student.id
    end
  end

  # GET /grade_changes/1/edit
  def edit
  end

  # POST /grade_changes
  # POST /grade_changes.json
  def create
    @grade_change = GradeChange.new(grade_change_params)
    if @grade_change.student_id.nil? && params[:student_id]
      @grade_change.student_id = params[:student_id]
    end

    respond_to do |format|
      if @grade_change.save
        format.html { redirect_to @grade_change, notice: 'Grade change was successfully created.' }
        format.json { render :show, status: :created, location: @grade_change }
      else
        format.html { render :new }
        format.json { render json: @grade_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grade_changes/1
  # PATCH/PUT /grade_changes/1.json
  def update
    respond_to do |format|
      if @grade_change.update(grade_change_params)
        format.html { redirect_to @grade_change, notice: 'Grade change was successfully updated.' }
        format.json { render :show, status: :ok, location: @grade_change }
      else
        format.html { render :edit }
        format.json { render json: @grade_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grade_changes/1
  # DELETE /grade_changes/1.json
  def destroy
    @grade_change.destroy
    respond_to do |format|
      format.html { redirect_to grade_changes_url, notice: 'Grade change was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade_change
      @grade_change = GradeChange.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grade_change_params
      params.require(:grade_change).permit(:reason, :code, :student_id, :happened_at, :new_clazz_code, :original_clazz_code)
    end

    def get_student
      if params[:student_id]
        @student = Student.find(params[:student_id])
      end
    end
end

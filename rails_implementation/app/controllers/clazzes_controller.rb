class ClazzesController < ApplicationController
  before_action :set_clazz, only: [:show, :edit, :update, :destroy]
  around_action :rescue_from_fk_constraint, only: [:destroy]
  before_action :get_department

  # GET /clazzes
  # GET /clazzes.json
  def index
    if @department
      @q = @department.clazzes.ransack(params[:q])
    else
      @q = Clazz.ransack(params[:q])
    end
    @clazzes = @q.result.page(params[:page]).per(params[:limit])
  end

  # GET /clazzes/1
  # GET /clazzes/1.json
  def show
  end

  # GET /clazzes/new
  def new
    @clazz = Clazz.new
    if @department
      @clazz.department_id =  @department.id
    end
  end

  # GET /clazzes/1/edit
  def edit
  end

  # POST /clazzes
  # POST /clazzes.json
  def create
    @clazz = Clazz.new(clazz_params)

    respond_to do |format|
      if @clazz.save
        format.html { redirect_to @clazz, notice: 'Clazz was successfully created.' }
        format.json { render :show, status: :created, location: @clazz }
      else
        format.html { render :new }
        format.json { render json: @clazz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clazzes/1
  # PATCH/PUT /clazzes/1.json
  def update
    respond_to do |format|
      if @clazz.update(clazz_params)
        format.html { redirect_to @clazz, notice: 'Clazz was successfully updated.' }
        format.json { render :show, status: :ok, location: @clazz }
      else
        format.html { render :edit }
        format.json { render json: @clazz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clazzes/1
  # DELETE /clazzes/1.json
  def destroy
    @clazz.destroy
    respond_to do |format|
      format.html { redirect_to clazzes_url, notice: 'Clazz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clazz
      @clazz = Clazz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clazz_params
      params.require(:clazz).permit(:code, :name, :teacher_id, :grade, :department_id)
    end

    def rescue_from_fk_constraint
      begin
        yield
      rescue  ActiveRecord::InvalidForeignKey
        respond_to do |format|
          @clazz.errors.add(:clazz, "is referenced!")
          format.html { redirect_to clazzes_url }
          format.json { render json: @clazz.errors, status: :unprocessable_entity }
        end
      end
    end

    def get_department
      if params[:department_id]
        @department = Department.find(params[:department_id])
      end
    end
end

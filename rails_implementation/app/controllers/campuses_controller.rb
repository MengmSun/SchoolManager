class CampusesController < ApplicationController
  before_action :set_campus, only: [:show, :edit, :update, :destroy]
  around_action :rescue_from_fk_constraint, only: [:destroy]

  # GET /campuses
  # GET /campuses.json
  def index
    @q = Campus.ransack(params[:q])
    @campuses = @q.result.page(params[:page]).per(params[:limit])
  end

  # GET /campuses/1
  # GET /campuses/1.json
  def show
  end

  # GET /campuses/new
  def new
    @campus = Campus.new
  end

  # GET /campuses/1/edit
  def edit
  end

  # POST /campuses
  # POST /campuses.json
  def create
    @campus = Campus.new(campus_params)

    respond_to do |format|
      if @campus.save
        format.html { redirect_to @campus, notice: 'Campus was successfully created.' }
        format.json { render :show, status: :created, location: @campus }
      else
        format.html { render :new }
        format.json { render json: @campus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campuses/1
  # PATCH/PUT /campuses/1.json
  def update
    respond_to do |format|
      if @campus.update(campus_params)
        format.html { redirect_to @campus, notice: 'Campus was successfully updated.' }
        format.json { render :show, status: :ok, location: @campus }
      else
        format.html { render :edit }
        format.json { render json: @campus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campuses/1
  # DELETE /campuses/1.json
  def destroy
    @campus.destroy
    respond_to do |format|
      format.html { redirect_to campuses_url, notice: 'Campus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campus
      @campus = Campus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def campus_params
      params.require(:campus).permit(:code, :name, :address)
    end

    def rescue_from_fk_constraint
      begin
        yield
      rescue  ActiveRecord::InvalidForeignKey
        respond_to do |format|
          @campus.errors.add(:campus, "is referenced!")
          format.html { redirect_to campuses_url }
          format.json { render json: @campus.errors, status: :unprocessable_entity }
        end
      end
    end
end

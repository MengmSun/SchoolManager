class StatusChangesController < ApplicationController
  before_action :set_status_change, only: [:show, :edit, :update, :destroy]

  # GET /status_changes
  # GET /status_changes.json
  def index
    @q = StatusChange.ransack(params[:q])
    @status_changes = @q.result.page(params[:page]).per(params[:limit])
  end

  # GET /status_changes/1
  # GET /status_changes/1.json
  def show
  end

  # GET /status_changes/new
  def new
    @status_change = StatusChange.new
  end

  # GET /status_changes/1/edit
  def edit
  end

  # POST /status_changes
  # POST /status_changes.json
  def create
    @status_change = StatusChange.new(status_change_params)

    respond_to do |format|
      if @status_change.save
        format.html { redirect_to @status_change, notice: 'Status change was successfully created.' }
        format.json { render :show, status: :created, location: @status_change }
      else
        format.html { render :new }
        format.json { render json: @status_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_changes/1
  # PATCH/PUT /status_changes/1.json
  def update
    respond_to do |format|
      if @status_change.update(status_change_params)
        format.html { redirect_to @status_change, notice: 'Status change was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_change }
      else
        format.html { render :edit }
        format.json { render json: @status_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_changes/1
  # DELETE /status_changes/1.json
  def destroy
    @status_change.destroy
    respond_to do |format|
      format.html { redirect_to status_changes_url, notice: 'Status change was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_change
      @status_change = StatusChange.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def status_change_params
      params.require(:status_change).permit(:code, :student_id, :happened_at, :new_clazz_code, :original_clazz_code)
    end
end

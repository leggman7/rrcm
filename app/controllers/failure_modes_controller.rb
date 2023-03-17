class FailureModesController < ApplicationController
  before_action :set_failure_mode, only: %i[ show edit update destroy ]

  # GET /failure_modes or /failure_modes.json
  def index
    @failure_modes = FailureMode.all
  end

  # GET /failure_modes/1 or /failure_modes/1.json
  def show
  end

  # GET /failure_modes/new
  def new
    @failure_mode = FailureMode.new
  end

  # GET /failure_modes/1/edit
  def edit
  end

  # POST /failure_modes or /failure_modes.json
  def create
    @failure_mode = FailureMode.new(failure_mode_params)

    respond_to do |format|
      if @failure_mode.save
        format.html { redirect_to failure_mode_url(@failure_mode), notice: "Failure mode was successfully created." }
        format.json { render :show, status: :created, location: @failure_mode }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @failure_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /failure_modes/1 or /failure_modes/1.json
  def update
    respond_to do |format|
      if @failure_mode.update(failure_mode_params)
        format.html { redirect_to failure_mode_url(@failure_mode), notice: "Failure mode was successfully updated." }
        format.json { render :show, status: :ok, location: @failure_mode }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @failure_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /failure_modes/1 or /failure_modes/1.json
  def destroy
    @failure_mode.destroy

    respond_to do |format|
      format.html { redirect_to failure_modes_url, notice: "Failure mode was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_failure_mode
      @failure_mode = FailureMode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def failure_mode_params
      params.require(:failure_mode).permit(:name, :description, :impact_to, :criticality, :thing_id)
    end
end

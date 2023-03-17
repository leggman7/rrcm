class FunctionalFailuresController < ApplicationController
  before_action :set_functional_failure, only: %i[ show edit update destroy ]

  # GET /functional_failures or /functional_failures.json
  def index
    @functional_failures = FunctionalFailure.all
  end

  # GET /functional_failures/1 or /functional_failures/1.json
  def show
  end

  # GET /functional_failures/new
  def new
    @functional_failure = FunctionalFailure.new
  end

  # GET /functional_failures/1/edit
  def edit
  end

  # POST /functional_failures or /functional_failures.json
  def create
    @functional_failure = FunctionalFailure.new(functional_failure_params)

    respond_to do |format|
      if @functional_failure.save
        format.html { redirect_to functional_failure_url(@functional_failure), notice: "Functional failure was successfully created." }
        format.json { render :show, status: :created, location: @functional_failure }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @functional_failure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /functional_failures/1 or /functional_failures/1.json
  def update
    respond_to do |format|
      if @functional_failure.update(functional_failure_params)
        format.html { redirect_to functional_failure_url(@functional_failure), notice: "Functional failure was successfully updated." }
        format.json { render :show, status: :ok, location: @functional_failure }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @functional_failure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /functional_failures/1 or /functional_failures/1.json
  def destroy
    @functional_failure.destroy

    respond_to do |format|
      format.html { redirect_to functional_failures_url, notice: "Functional failure was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_functional_failure
      @functional_failure = FunctionalFailure.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def functional_failure_params
      params.require(:functional_failure).permit(:description, :equip_function_id)
    end
end

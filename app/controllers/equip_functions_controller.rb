class EquipFunctionsController < ApplicationController
  before_action :set_equip_function, only: %i[ show edit update destroy ]

  # GET /equip_functions or /equip_functions.json
  def index
    @equip_functions = EquipFunction.all
  end

  # GET /equip_functions/1 or /equip_functions/1.json
  def show
  end

  # GET /equip_functions/new
  def new
    @equip_function = EquipFunction.new
  end

  # GET /equip_functions/1/edit
  def edit
  end

  # POST /equip_functions or /equip_functions.json
  def create
    @equip_function = EquipFunction.new(equip_function_params)

    respond_to do |format|
      if @equip_function.save
        format.html { redirect_to equip_function_url(@equip_function), notice: "Equip function was successfully created." }
        format.json { render :show, status: :created, location: @equip_function }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @equip_function.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equip_functions/1 or /equip_functions/1.json
  def update
    respond_to do |format|
      if @equip_function.update(equip_function_params)
        format.html { redirect_to equip_function_url(@equip_function), notice: "Equip function was successfully updated." }
        format.json { render :show, status: :ok, location: @equip_function }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @equip_function.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equip_functions/1 or /equip_functions/1.json
  def destroy
    @equip_function.destroy

    respond_to do |format|
      format.html { redirect_to equip_functions_url, notice: "Equip function was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equip_function
      @equip_function = EquipFunction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def equip_function_params
      params.require(:equip_function).permit(:name, :tracked_description, :tracked_value, :thing_id)
    end
end

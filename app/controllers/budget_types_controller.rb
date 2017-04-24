class BudgetTypesController < ApplicationController
  before_action :set_budget_type, only: [:show, :edit, :update, :destroy]

  # GET /budget_types
  # GET /budget_types.json
  def index
    @budget_types = BudgetType.all
  end

  # GET /budget_types/1
  # GET /budget_types/1.json
  def show
  end

  # GET /budget_types/new
  def new
    @budget_type = BudgetType.new
  end

  # GET /budget_types/1/edit
  def edit
  end

  # POST /budget_types
  # POST /budget_types.json
  def create
    @budget_type = BudgetType.new(budget_type_params)

    respond_to do |format|
      if @budget_type.save
        format.html { redirect_to @budget_type, notice: 'Budget type was successfully created.' }
        format.json { render :show, status: :created, location: @budget_type }
      else
        format.html { render :new }
        format.json { render json: @budget_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget_types/1
  # PATCH/PUT /budget_types/1.json
  def update
    respond_to do |format|
      if @budget_type.update(budget_type_params)
        format.html { redirect_to @budget_type, notice: 'Budget type was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget_type }
      else
        format.html { render :edit }
        format.json { render json: @budget_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_types/1
  # DELETE /budget_types/1.json
  def destroy
    @budget_type.destroy
    respond_to do |format|
      format.html { redirect_to budget_types_url, notice: 'Budget type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_type
      @budget_type = BudgetType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_type_params
      params.require(:budget_type).permit(:budget_type, :budget_disposition_id)
    end
end

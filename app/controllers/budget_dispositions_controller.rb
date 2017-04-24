class BudgetDispositionsController < ApplicationController
  before_action :set_budget_disposition, only: [:show, :edit, :update, :destroy]

  # GET /budget_dispositions
  # GET /budget_dispositions.json
  def index
    @budget_dispositions = BudgetDisposition.all
  end

  # GET /budget_dispositions/1
  # GET /budget_dispositions/1.json
  def show
  end

  # GET /budget_dispositions/new
  def new
    @budget_disposition = BudgetDisposition.new
  end

  # GET /budget_dispositions/1/edit
  def edit
  end

  # POST /budget_dispositions
  # POST /budget_dispositions.json
  def create
    @budget_disposition = BudgetDisposition.new(budget_disposition_params)

    respond_to do |format|
      if @budget_disposition.save
        format.html { redirect_to @budget_disposition, notice: 'Budget disposition was successfully created.' }
        format.json { render :show, status: :created, location: @budget_disposition }
      else
        format.html { render :new }
        format.json { render json: @budget_disposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget_dispositions/1
  # PATCH/PUT /budget_dispositions/1.json
  def update
    respond_to do |format|
      if @budget_disposition.update(budget_disposition_params)
        format.html { redirect_to @budget_disposition, notice: 'Budget disposition was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget_disposition }
      else
        format.html { render :edit }
        format.json { render json: @budget_disposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_dispositions/1
  # DELETE /budget_dispositions/1.json
  def destroy
    @budget_disposition.destroy
    respond_to do |format|
      format.html { redirect_to budget_dispositions_url, notice: 'Budget disposition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_disposition
      @budget_disposition = BudgetDisposition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_disposition_params
      params.require(:budget_disposition).permit(:disposition, :multiplier)
    end
end

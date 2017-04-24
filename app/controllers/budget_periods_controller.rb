class BudgetPeriodsController < ApplicationController
  before_action :set_budget_period, only: [:show, :edit, :update, :destroy]

  # GET /budget_periods
  # GET /budget_periods.json
  def index
    @budget_periods = BudgetPeriod.all
  end

  # GET /budget_periods/1
  # GET /budget_periods/1.json
  def show
  end

  # GET /budget_periods/new
  def new
    @budget_period = BudgetPeriod.new
  end

  # GET /budget_periods/1/edit
  def edit
  end

  # POST /budget_periods
  # POST /budget_periods.json
  def create
    @budget_period = BudgetPeriod.new(budget_period_params)

    respond_to do |format|
      if @budget_period.save
        format.html { redirect_to @budget_period, notice: 'Budget period was successfully created.' }
        format.json { render :show, status: :created, location: @budget_period }
      else
        format.html { render :new }
        format.json { render json: @budget_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget_periods/1
  # PATCH/PUT /budget_periods/1.json
  def update
    respond_to do |format|
      if @budget_period.update(budget_period_params)
        format.html { redirect_to @budget_period, notice: 'Budget period was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget_period }
      else
        format.html { render :edit }
        format.json { render json: @budget_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_periods/1
  # DELETE /budget_periods/1.json
  def destroy
    @budget_period.destroy
    respond_to do |format|
      format.html { redirect_to budget_periods_url, notice: 'Budget period was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_period
      @budget_period = BudgetPeriod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_period_params
      params.require(:budget_period).permit(:period, :days, :frequency)
    end
end
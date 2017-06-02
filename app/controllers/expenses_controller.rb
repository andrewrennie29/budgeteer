class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]

  # GET /expenses
  # GET /expenses.json
  def index
    @expenses = Expense.in_period(Budget.new.start_date..Budget.new.end_date).order(expense_date: :desc)
    @expenses_chart = Expense.in_period(Budget.new.start_date..Budget.new.end_date).joins(:expense_category).group(:category).order('sum(value) desc').sum(:value)
  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
    @budgets = Budget.joins(:budget_type).left_outer_joins(:expenses).where('budget_types.budget_type = ?', 'Variable Fixed').group(:name).order('count(*) desc, name asc')
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = Expense.new(expense_params)

    respond_to do |format|
      if @expense.save
        @expenses = Expense.in_period(Budget.new.start_date..Budget.new.end_date).order(expense_date: :desc)
        @expenses_chart = Expense.joins(:expense_category).group(:category).order('sum(value) desc').sum(:value)
        @budget = Budget.find_by_name(@expense.budget.name)
        format.js
        format.html { redirect_to @expense, notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        @expenses = Expense.in_period(Budget.new.start_date..Budget.new.end_date).order(expense_date: :desc)
        @expenses_chart = Expense.joins(:expense_category).group(:category).order('sum(value) desc').sum(:value)
        @budget = Budget.find_by_name(@expense.budget.name)
        format.js
        format.html { redirect_to @expense, notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to expenses_url, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_params
      params.require(:expense).permit(:expense_category_id, :value, :expense_date, :comment, :budget_id, :expense_owner_id)
    end
end

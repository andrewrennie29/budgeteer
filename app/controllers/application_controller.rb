class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_expense_categories

  def set_expense_categories
    @expense_log = ExpenseCategory.left_outer_joins(:expenses).group(:category).order('count(*) desc, category asc')
    @expense = Expense.new
  end
end

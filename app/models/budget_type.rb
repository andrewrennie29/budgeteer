class BudgetType < ApplicationRecord
  belongs_to :budget_disposition
  has_many :budgets
end

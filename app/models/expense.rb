class Expense < ApplicationRecord
  belongs_to :expense_category
  belongs_to :budget
  has_one :budget_type, through: :budget
  belongs_to :expense_owner
  scope :in_period, lambda { |range| where(expense_date: range) }
end

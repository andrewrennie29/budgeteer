json.extract! expense, :id, :expense_category_id, :value, :expense_date, :comment, :budget_id, :expense_owner_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)

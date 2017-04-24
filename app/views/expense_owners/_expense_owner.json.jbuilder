json.extract! expense_owner, :id, :name, :allocation, :created_at, :updated_at
json.url expense_owner_url(expense_owner, format: :json)

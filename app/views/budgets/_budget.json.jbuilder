json.extract! budget, :id, :name, :rollover, :enddate, :value, :budget_period_id, :budget_type_id, :created_at, :updated_at
json.url budget_url(budget, format: :json)

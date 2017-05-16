class BudgetPeriod < ApplicationRecord
	def self.set_period_values
		month_days = Budget.first.end_date - Budget.first.start_date.yesterday
		quarter_days = Budget.first.end_date - Budget.first.end_date.prev_quarter.strftime('%Y-%m-27').to_date
		year_days = Date.today.end_of_year - Date.today.beginning_of_year.yesterday

		BudgetPeriod.find_by_period("Month").update(:days => month_days)
		BudgetPeriod.find_by_period("Quarter").update(:days => quarter_days)
		BudgetPeriod.find_by_period("Annual").update(:days => year_days)

	end
end
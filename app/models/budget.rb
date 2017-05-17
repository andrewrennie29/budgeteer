class Budget < ApplicationRecord
  belongs_to :budget_period
  belongs_to :budget_type
  has_many :expenses
  has_one :budget_disposition, through: :budget_type
  has_many :expense_categories, through: :expenses

  attr_accessor :burndown_running_total

  def start_date
  	if Date.today.day < 28
      Date.new(Date.today.beginning_of_month.yesterday.year, Date.today.beginning_of_month.yesterday.month, 28)
    else
      Date.new(Date.today.beginning_of_month.year, Date.today.beginning_of_month.month, 28)
    end
  end

  def end_date
  	start_date.next_month.yesterday
  end

  def budget_period_start_date
    if self.budget_period.days > (self.end_date - self.start_date + 1)
      (self.end_date - self.budget_period.days).strftime('%Y-%m-28').to_date
    else
      (Date.today.end_of_week(:sunday) - self.budget_period.days * self.budget_period.frequency + 1).to_date
    end
  end

  def budget_period_end_date
    if self.budget_period.days > (self.end_date - self.start_date + 1)
      self.end_date
    else
      Date.today.end_of_week(:sunday)
    end
  end  

  def days_in_month
  	(self.end_date.tomorrow - self.start_date).to_i
  end

  def days_remaining
    (self.end_date.tomorrow - Date.today).to_i
  end

  def daily_value
  	self.value / (self.budget_period.days * self.budget_period.frequency)
  end

  def weekly_value
  	self.daily_value * 7
  end

  def self.burndown
  	total = 0.00
  	Budget.order(:id).collect do |w|
  		total += w.weekly_value * w.budget_disposition.multiplier
  		w.burndown_running_total = total
  	end
  end

  def monthly_value
  	self.daily_value * self.days_in_month
  end

  def remaining
  	self.monthly_value.to_f - self.expenses.in_period(self.start_date..self.end_date).sum(:value).to_f
  end

  def weekly_remaining
    self.weekly_value.to_f - self.expenses.in_period(Date.today.beginning_of_week(:sunday)..Date.today.end_of_week(:sunday)).sum(:value).to_f
  end

  def daily_remaining
    self.remaining / self.days_remaining
  end

  def expenses_in_budget_period
    self.expenses.in_period(self.budget_period_start_date..self.budget_period_end_date)
  end

  def remaining_in_budget_period
    self.value - self.expenses_in_budget_period.sum(:value)
  end

  def self.general_value
  	general_budget = self.find_by_name("General")
  	general_budget.update(:value => 0)
  	
  	b = Budget.burndown
  	gen_val = b[b.count - 1]
  	
  	general_budget.update(:value => gen_val)
  end

end

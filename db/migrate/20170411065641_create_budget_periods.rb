class CreateBudgetPeriods < ActiveRecord::Migration[5.0]
  def change
    create_table :budget_periods do |t|
      t.string :period
      t.integer :days
      t.integer :frequency

      t.timestamps
    end
  end
end

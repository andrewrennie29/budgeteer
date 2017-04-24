class CreateBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :budgets do |t|
      t.string :name
      t.boolean :rollover
      t.date :enddate
      t.decimal :value, precision: 10, scale: 2
      t.belongs_to :budget_period, foreign_key: true
      t.belongs_to :budget_type, foreign_key: true

      t.timestamps
    end
  end
end

class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.belongs_to :expense_category, foreign_key: true
      t.decimal :value, precision: 10, scale: 2
      t.date :expense_date
      t.string :comment
      t.belongs_to :budget, foreign_key: true
      t.belongs_to :expense_owner, foreign_key: true

      t.timestamps
    end
  end
end

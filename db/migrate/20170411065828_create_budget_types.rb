class CreateBudgetTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :budget_types do |t|
      t.string :budget_type
      t.belongs_to :budget_disposition, foreign_key: true

      t.timestamps
    end
  end
end

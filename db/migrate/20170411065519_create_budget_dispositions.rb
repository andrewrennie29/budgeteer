class CreateBudgetDispositions < ActiveRecord::Migration[5.0]
  def change
    create_table :budget_dispositions do |t|
      t.string :disposition
      t.integer :multiplier

      t.timestamps
    end
  end
end

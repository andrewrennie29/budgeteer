class CreateExpenseOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :expense_owners do |t|
      t.string :name
      t.decimal :allocation, precision: 10, scale: 2

      t.timestamps
    end
  end
end

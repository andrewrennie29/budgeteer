class AddIconToExpenseCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :expense_categories, :icon, :string
  end
end

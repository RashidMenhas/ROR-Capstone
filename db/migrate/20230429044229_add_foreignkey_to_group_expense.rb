class AddForeignkeyToGroupExpense < ActiveRecord::Migration[7.0]
  def change
    add_reference :group_expenses, :expense, null: false, foreign_key: true
    add_reference :group_expenses, :group, null: false, foreign_key: true
  end
end

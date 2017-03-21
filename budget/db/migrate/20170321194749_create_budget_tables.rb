class CreateBudgetTables < ActiveRecord::Migration[5.0]
  def change
    create_table :budget_tables do |t|
      t.integer :user_id
      t.integer :category_id
      t.text :type
      t.float :amount

      t.timestamps
    end
  end
end

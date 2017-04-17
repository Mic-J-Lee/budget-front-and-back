class CreateBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :budgets do |t|
      t.belongs_to :user
      t.integer :target, null: false
      t.integer :month, null: false
      t.text :category, null: false
      t.timestamps
    end
  end
end

class CreateIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :incomes do |t|
      t.belongs_to :user
      t.integer :month, null: false
      t.integer :amount, null: false

      t.timestamps
    end
  end
end

class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.belongs_to :budget
      t.string :name, null: false, default: "Miscellaneous"
      t.integer :amount, null: false

      t.timestamps
    end
  end
end

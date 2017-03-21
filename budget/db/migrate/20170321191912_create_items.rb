class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.text :name
      t.float :amount
      t.timestamps
    end
  end
end

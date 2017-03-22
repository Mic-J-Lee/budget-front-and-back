class Category < ApplicationRecord
  has_many :budget_table
  has_many :items
end

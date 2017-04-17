class Expense < ApplicationRecord
  belongs_to :budget
  validates :amount, presence: true, numericality: { only_integer: true }
end

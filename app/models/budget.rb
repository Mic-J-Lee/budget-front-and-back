class Budget < ApplicationRecord
  belongs_to :user
  has_many :expenses
  validates :target, presence: true, numericality: { only_integer: true }
end

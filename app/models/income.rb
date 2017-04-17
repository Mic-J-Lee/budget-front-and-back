class Income < ApplicationRecord
  belongs_to :user
  validates :month, presence: true
  validates :amount, presence: true, numericality: { only_integer: true }
end

class Expense < ApplicationRecord
  belongs_to :category
  validates :value, numericality: { greater_than_or_equal_to: 0 }
  validates :name, presence: true
  validates :value, presence: true
  validates :date, presence: true
end

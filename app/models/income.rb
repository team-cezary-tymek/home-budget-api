class Income < ApplicationRecord
  validates :value, numericality: { greater_than: 0 }
  validates :name, presence: true
  validates :value, presence: true
  validates :date, presence: true
end

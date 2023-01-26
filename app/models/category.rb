class Category < ApplicationRecord
  validates :name, uniqueness: true
  has_many :expenses
  validates :name, presence: true
end

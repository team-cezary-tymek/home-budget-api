class Category < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  has_many :expenses, dependent: :delete_all
end

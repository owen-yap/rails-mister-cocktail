class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, uniqueness: { message: 'This ingredient is already added!' }
end

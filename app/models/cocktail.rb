class Cocktail < ApplicationRecord
  has_many :ingredients, through: :doses
  has_many :amounts, through: :doses
  has_many :measurements, through: :doses
  has_many :doses, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end

class Cocktail < ApplicationRecord
  has_many :ingredients, through: :doses
  has_many :amounts, through: :doses
  has_many :measurements, through: :doses
  has_many :doses, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  # validates :photo, allow_nil: true
  mount_uploader :photo, PhotoUploader
end

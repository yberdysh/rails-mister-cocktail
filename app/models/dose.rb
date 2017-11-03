class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  # validates :cocktail,  uniqueness: { scope: :ingredient }
  validates :amount, inclusion: { in:
    ["1/8", "1/4", "1/3", "1/2", "2/3", "3/4", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
    allow_nil: false}, presence: true
  validates :measurement, inclusion: { in:
    ["oz", "tbs", "tsp", "pinch", "dash", "piece", "cube", "leaf", "slice"],
    allow_blank: true}, presence: true
end


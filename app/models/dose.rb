class Dose < ApplicationRecord
  belongs_to :cocktail

  validates :description, presence: true, length: { minimum: 10 }
  validates :cocktail_id, uniqueness: true
end

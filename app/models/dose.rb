class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail_id, presence: true
  validates :ingridient_id, presence: true
end


# A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.

#   validates :name, uniqueness: true, presence: true
#   validates :address, presence: true
#   validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }
# end

class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id,
                                        message: 'One cocktail should only have one type of every ingredient',
                                        case_sensitve: false }
end

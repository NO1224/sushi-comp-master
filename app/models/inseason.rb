class Inseason < ApplicationRecord
  has_many :food_inseasons, dependent: :destroy
  has_many :foods, through: :food_inseasons

  with_options presence: true do
    validates :season_month
  end
end

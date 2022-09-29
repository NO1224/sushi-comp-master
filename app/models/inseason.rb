class Inseason < ApplicationRecord
  has_many :food_inseasons, dependent: :destroy
  has_many :foods, through: :food_inseasons
end

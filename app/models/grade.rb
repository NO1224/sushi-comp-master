class Grade < ApplicationRecord
  has_many :grade_foods
  has_many :foods
end

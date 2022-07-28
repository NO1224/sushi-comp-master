class Food < ApplicationRecord
  has_one_attached :image
  has_many :grade_foods
  has_many :grades
  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  with_options presence: true do
    validates :sushi_neta_name
    validates :explanation
    validates :season_month
    validates :image
  end

  def avg_score
    unless self.comments.empty?
      comments.average(:rate).round(1).to_f
    else
      0.0
    end
  end

  def comment_rate_percentage
    unless self.comments.empty?
      comments.average(:rate).round(1).to_f*100/5
    else
      0.0
    end
  end
end

class Food < ApplicationRecord
  has_one_attached :image
  has_many :inseasons, dependent: :destroy
  accepts_nested_attributes_for :inseasons
  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :season

  with_options presence: true do
    validates :sushi_neta_name
    validates :explanation
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

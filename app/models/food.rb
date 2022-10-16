class Food < ApplicationRecord
  has_one_attached :image
  has_many :food_inseasons, dependent: :destroy
  has_many :inseasons, through: :food_inseasons
  #accepts_nested_attributes_for :inseasons
  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :season

  with_options presence: true do
    validates :sushi_neta_name
    validates :explanation
    validates :image
    #validates :inseason_ids
  end

  #星評価の平均
  def avg_score
    unless self.comments.empty?
      comments.average(:rate).round(1).to_f
    else
      0.0
    end
  end

  #星評価のパーセント換算(星のdiv領域に色を付ける割合)
  def comment_rate_percentage
    unless self.comments.empty?
      comments.average(:rate).round(1).to_f * 100 / 5
    else
      0.0
    end
  end

  def inseasons_save(inseason_ids)
    if self.inseasons != nil
      food_inseasons_records = FoodInseason.where(food_id: self.id)
      food_inseasons_records.destroy_all
    end

    inseason_ids.each do |inseason|
      inspected_inseason = Inseason.where(season_month: inseason).first_or_create
      self.inseasons << inspected_inseason
    end

  end
end

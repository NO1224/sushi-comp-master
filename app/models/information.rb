class Information < ApplicationRecord
  belongs_to :user, optional: true
  with_options presence: true do
    validates :title
    validates :content
  end

  def self.divide_monthly
    unless Information.blank?
      return Information.group("YEAR(created_at)").group("MONTH(created_at)").count
    else
      return ""
    end
  end

  
end

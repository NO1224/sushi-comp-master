class Information < ApplicationRecord
  belongs_to :user, optional: true
  with_options presence: true do
    validates :title
    validates :content
  end

  #def divide_monthly
  #  return Information.group("strftime('%Y%m', informations.created_at)")
  #                      .order(Arel.sql("strftime('%Y%m', informations.created_at) desc")).count
  #end
end

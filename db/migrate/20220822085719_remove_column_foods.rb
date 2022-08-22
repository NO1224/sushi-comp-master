class RemoveColumnFoods < ActiveRecord::Migration[6.0]
  def change
    remove_column :foods, :season_month, :integer
  end
end

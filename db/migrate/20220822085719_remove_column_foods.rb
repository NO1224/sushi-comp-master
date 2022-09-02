class RemoveColumnFoods < ActiveRecord::Migration[6.0]
  #foodsテーブルから寿司ネタの旬(season_month)を削除
  def change
    remove_column :foods, :season_month, :integer
  end
end

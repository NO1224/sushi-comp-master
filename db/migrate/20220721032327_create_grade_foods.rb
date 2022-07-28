class CreateGradeFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :grade_foods do |t|
      t.references :grade, null: false, foreign_key: true
      t.references :food,  null: false, foreign_key: true
      t.integer    :count, null: false
      t.timestamps
    end
  end
end

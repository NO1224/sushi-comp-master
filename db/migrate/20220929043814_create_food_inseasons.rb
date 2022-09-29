class CreateFoodInseasons < ActiveRecord::Migration[6.0]
  def change
    create_table :food_inseasons do |t|
      t.references :food, null: false, foreign_key: true
      t.references :inseason, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateInseasons < ActiveRecord::Migration[6.0]
  def change
    create_table :inseasons do |t|

      t.timestamps
      t.references :food, null: false, foreign_key: true
      t.integer    :season_month,    null: false
    end
  end
end

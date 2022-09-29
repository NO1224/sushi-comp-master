class CreateInseasons < ActiveRecord::Migration[6.0]
  def change
    create_table :inseasons do |t|
      t.integer    :season_month, null: false

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.string     :content, null: false
      t.integer    :rate, null: false, default: 0
      t.timestamps
    end
  end
end

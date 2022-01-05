class CreateLots < ActiveRecord::Migration[6.1]
  def change
    create_table :lots do |t|
      t.string :name
      t.text :description
      t.decimal :start_price
      t.decimal :fast_buy_price
      t.datetime :end_date
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

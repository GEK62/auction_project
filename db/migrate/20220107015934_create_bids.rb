class CreateBids < ActiveRecord::Migration[6.1]
  def change
    create_table :bids do |t|
      t.integer :user_id, null: false
      t.integer :lot_id, null: false
      t.decimal :amount, precision: 10, scale: 2, null: false

      t.timestamps
    end
  end
end

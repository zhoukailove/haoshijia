class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :user
      t.references :room
      t.string :order_number
      t.timestamps
    end
    add_index :purchases, :user_id
    add_index :purchases, :room_id
  end
end

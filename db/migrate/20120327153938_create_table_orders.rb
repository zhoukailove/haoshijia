class CreateTableOrders < ActiveRecord::Migration
  def up
    create_table :orders do |t|
      t.integer :user_id
      t.integer :room_id
      t.date    :order_from
      t.date    :order_to
      t.string  :email
      t.string  :mobile
      t.float   :price
      t.float   :profile
      t.integer :custom_num
      t.integer :state, :default => 0
      t.integer :during
      t.integer :owner_id
      t.string  :username
      t.string  :order_number
      t.timestamps
    end
    add_index :orders, :user_id
    add_index :orders, :room_id
  end

  def down
    drop_table :orders
  end
end

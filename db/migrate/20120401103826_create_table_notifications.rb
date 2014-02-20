class CreateTableNotifications < ActiveRecord::Migration
  def up
    create_table :notifications do |t|
      t.string  :title
      t.text    :content
      t.integer :traveller_id  #from_id
      t.integer :owner_id      #to_id
      t.integer :order_id
      t.string  :order_num
      t.boolean :read_flag, :default => 0
      t.timestamps
    end
    add_index :notifications, :owner_id
    add_index :notifications, :order_num
    add_index :notifications, :read_flag
  end

  def down
  end
end

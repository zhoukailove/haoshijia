class CreateTableStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :user_id
      t.integer :room_id
      t.timestamps
    end
    add_index :stores, :user_id
    add_index :stores, :room_id    
  end
end

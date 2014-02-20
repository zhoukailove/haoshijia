class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.integer :room_id
      t.string :province
      t.string :city
      t.string :area
      t.string :street
      t.string :detail
      t.boolean :state,:default => 0

      t.timestamps
    end
    add_index :addresses, :user_id
    add_index :addresses, :room_id
    add_index :addresses, :city
  end
end

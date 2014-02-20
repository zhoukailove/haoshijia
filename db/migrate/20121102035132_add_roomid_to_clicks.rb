class AddRoomidToClicks < ActiveRecord::Migration
  def change
    add_column :clicks, :room_id, :integer
    add_index :clicks, :room_id
    add_index :clicks, :user_id
  end
end

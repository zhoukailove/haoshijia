class DeleteRoomIdFromAddresses < ActiveRecord::Migration
  def up
    remove_column :addresses, :room_id
  end

  def down
    add_column :addresses, :room_id,:integer
  end
end

class AddRoomIdToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :room_id, :integer

    remove_column :rooms, :address_id
  end
end

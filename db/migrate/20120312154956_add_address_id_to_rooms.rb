class AddAddressIdToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :address_id, :integer
  end
end

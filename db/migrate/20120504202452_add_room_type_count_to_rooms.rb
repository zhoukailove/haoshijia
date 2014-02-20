class AddRoomTypeCountToRooms < ActiveRecord::Migration
  def change
  	add_column :rooms, :room_type_count, :integer,:default => 1
  end
end

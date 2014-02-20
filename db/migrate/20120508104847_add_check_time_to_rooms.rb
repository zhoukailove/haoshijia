class AddCheckTimeToRooms < ActiveRecord::Migration
  def change
  	add_column :rooms, :check_at, :timestamp
  end
end

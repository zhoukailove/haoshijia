class AddEliteToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :elite, :bool
  end
end

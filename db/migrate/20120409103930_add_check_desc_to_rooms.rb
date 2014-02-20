class AddCheckDescToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :check_desc, :text
  end
end

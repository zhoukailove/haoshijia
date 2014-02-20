class AddColumnRoomNumberNoToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :room_number_no, :integer
  end
end

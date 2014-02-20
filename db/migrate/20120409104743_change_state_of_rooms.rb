class ChangeStateOfRooms < ActiveRecord::Migration
  def change
    change_column :rooms, :state, :integer,:default => 0
  end

end

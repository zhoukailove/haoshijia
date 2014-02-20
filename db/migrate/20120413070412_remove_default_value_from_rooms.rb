class RemoveDefaultValueFromRooms < ActiveRecord::Migration
  def change
    change_column :rooms, :bed_num, :integer, :default => nil
    change_column :rooms, :custom_num, :integer, :default => nil
    change_column :rooms, :washroom, :integer, :default => nil
  end
end

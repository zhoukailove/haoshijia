class AddUndercarriageToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :undercarriage, :boolean,:default => false
  end
end

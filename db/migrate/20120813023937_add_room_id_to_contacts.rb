class AddRoomIdToContacts < ActiveRecord::Migration
  def change
  	add_column :contacts, :room_id, :integer,:default => nil
  end
end

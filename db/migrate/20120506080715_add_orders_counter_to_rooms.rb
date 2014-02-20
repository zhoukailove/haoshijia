class AddOrdersCounterToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :orders_count, :integer , :default => 0
  end
end

class AddRentidToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :rent_id, :integer
  end
end

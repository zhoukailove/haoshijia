class AddPaypalToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :paypal, :float,:default => 0.0
  end
end

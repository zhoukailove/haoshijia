class AddInitTotalToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :init_total, :float,:default => nil
  end
end

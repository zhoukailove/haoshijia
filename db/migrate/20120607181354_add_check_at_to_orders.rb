class AddCheckAtToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :check_at, :string,:default => nil
  end
end

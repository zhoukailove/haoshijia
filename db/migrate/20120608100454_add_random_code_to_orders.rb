class AddRandomCodeToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :random_code, :string,:default => nil
  end
end

class ChangeTotalToOrders < ActiveRecord::Migration
  def change
  	change_column :orders, :total, :float
  end
end

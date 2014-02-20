class AddColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :descript, :text
  end
end

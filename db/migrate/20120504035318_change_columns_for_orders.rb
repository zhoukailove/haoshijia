class ChangeColumnsForOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :state
    add_column :orders, :state, :string, :default => 'pending'

    remove_column :orders, :profile
    add_column :orders, :total, :integer, :default => 0
  end
end

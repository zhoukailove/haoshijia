class AddStoresCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :stores_count, :integer, :default => 0
  end
end

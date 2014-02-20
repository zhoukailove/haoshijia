class AddCounterCache < ActiveRecord::Migration
  def change
    add_column :rooms, :comments_count, :integer, :default => 0
    add_column :rooms, :screenshots_count, :integer, :default => 0

    add_column :users, :rooms_count, :integer, :default => 0
    add_column :users, :orders_count, :integer, :default => 0

  end
end

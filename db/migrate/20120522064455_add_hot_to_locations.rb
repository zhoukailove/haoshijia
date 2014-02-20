class AddHotToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :hot, :integer, :default => 0
  end
end

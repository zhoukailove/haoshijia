class AddActiveTimeToPanics < ActiveRecord::Migration
  def change
    add_column :panics, :active_start_time, :string,:default => nil
    add_column :panics, :active_end_time,   :string,:default => nil
  end
end

class ChangeLatLngToLocations < ActiveRecord::Migration
  def change
    change_column :locations, :latitude, :decimal, :precision => 20, :scale => 17
    change_column :locations, :longitude, :decimal, :precision => 20, :scale => 17
  end
end

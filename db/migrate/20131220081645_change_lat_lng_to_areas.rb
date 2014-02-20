class ChangeLatLngToAreas < ActiveRecord::Migration
  def change
    change_column :areas, :latitude, :decimal, :precision => 20, :scale => 17
    change_column :areas, :longitude, :decimal, :precision => 20, :scale => 17
  end
end

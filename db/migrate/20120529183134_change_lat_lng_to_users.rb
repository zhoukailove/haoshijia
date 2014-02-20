class ChangeLatLngToUsers < ActiveRecord::Migration
  def change
  	change_column :rooms, :latitude, :decimal, :precision => 20, :scale => 17
  	change_column :rooms, :longitude, :decimal, :precision => 20, :scale => 17
  end
end

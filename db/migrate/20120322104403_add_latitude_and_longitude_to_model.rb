class AddLatitudeAndLongitudeToModel < ActiveRecord::Migration
  def change
    add_column :rooms, :latitude, :float
    add_column :rooms, :longitude, :float
  end
end

class AddPositionToShops < ActiveRecord::Migration
  def change
  	add_column :shops, :position, :integer
  end
end

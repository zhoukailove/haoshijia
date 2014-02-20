class AddPositionToPanics < ActiveRecord::Migration
  def change
  	add_column :panics, :position, :integer
  end
end

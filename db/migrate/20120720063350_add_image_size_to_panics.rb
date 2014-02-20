class AddImageSizeToPanics < ActiveRecord::Migration
  def change
  	add_column :panics, :image_size, :string
  end
end

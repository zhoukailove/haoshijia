class AddPositionToScreenshots < ActiveRecord::Migration
  def change
    add_column :screenshots, :position, :integer
  end
end

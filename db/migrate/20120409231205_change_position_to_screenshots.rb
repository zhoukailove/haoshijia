class ChangePositionToScreenshots < ActiveRecord::Migration
  def change
    change_column :screenshots, :position, :integer
  end

end

class AddColumnToScreenshots < ActiveRecord::Migration
  def change
    add_column :screenshots, :photo, :string
    remove_column :screenshots, :avatar
  end
end

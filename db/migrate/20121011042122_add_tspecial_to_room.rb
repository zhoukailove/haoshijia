class AddTspecialToRoom < ActiveRecord::Migration
  def change
  	add_column :rooms, :tspecial, :boolean
  end
end

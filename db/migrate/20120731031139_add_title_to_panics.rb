class AddTitleToPanics < ActiveRecord::Migration
  def change
  	add_column :panics, :title, :string,:default => nil
  end
end

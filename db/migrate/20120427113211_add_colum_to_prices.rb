class AddColumToPrices < ActiveRecord::Migration
  def change
  	add_column :prices, :special_from, :date
  	add_column :prices, :special_to,   :date
  	add_column :prices, :special,      :boolean,:default => false
  end
end

class AddPeriodToPanics < ActiveRecord::Migration
  def change
  	add_column :panics, :period, :integer,:default => 1
  end
end

class AddPeriodToPurchases < ActiveRecord::Migration
  def change
  	add_column :purchases, :period, :integer,:default => nil
  end
end

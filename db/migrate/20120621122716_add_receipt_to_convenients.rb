class AddReceiptToConvenients < ActiveRecord::Migration
  def change
  	add_column :convenients, :pos, :boolean,:default => 0
    add_column :convenients, :receipt, :boolean,:default => 0
  	add_column :convenients, :english, :boolean,:default => 0
  	add_column :convenients, :daigou, :boolean,:default => 0
  end
end

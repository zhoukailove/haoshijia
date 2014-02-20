class AddWinToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :win, :boolean, :default => false
  end
end

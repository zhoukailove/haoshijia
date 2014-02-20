class AddPriceTypeToPrices < ActiveRecord::Migration
  def change
    add_column :prices, :price_type, :integer
  end
end

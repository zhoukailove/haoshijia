class AddPanicIdToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :panic_id, :integer
  end
end

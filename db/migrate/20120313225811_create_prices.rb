class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.float :day_price
      t.float :week_price
      t.float :month_price
      t.integer :room_id
      t.integer :state

      t.timestamps
    end
  end
end

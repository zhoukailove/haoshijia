class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :level
      t.integer :per_km
      t.integer :per_hour
      t.integer :capacity
      t.integer :pick_initiate
      t.integer :send_initiate
      t.string :city

      t.timestamps
    end
  end
end

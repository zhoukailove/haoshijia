class CreateTableSpecials < ActiveRecord::Migration
  def change
  	create_table :specials do |t|
      t.integer :room_id
      t.date :special_date
      t.string :special_time
      t.float  :price
      t.integer :special_type
      t.timestamps
    end
    add_index :specials, :room_id
    add_index :specials, :special_date
    add_index :specials, :special_time
  end
end

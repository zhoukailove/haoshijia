class CreateTableLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string   :locate
      t.string   :spell
      t.string   :displaypath
      t.integer  :category_id,:defalut => 1  # 1:locate  2:hot area    
      t.float    :latitude
      t.float    :longitude
      t.timestamps
    end
    add_index :locations, :spell
    add_index :locations, :locate
    add_index :locations, :displaypath 	
  end
end

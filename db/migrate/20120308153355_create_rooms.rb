class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :title
      t.string :home_type
      t.string :room_type
      t.string :hire_type
      t.integer :bed_num,:default => 1
      t.string :bed_type
      t.integer :custom_num,:default => 1
      t.float :room_area
      t.integer :washroom,:default => 1
      t.integer :room_step,:default => 3
      t.integer :all_step,:default => 6
      t.boolean :receipt,:default => 0
      t.text :detail
      t.text :address_flag
      t.text :traffic
      t.text :life_assort
      t.text :scenery
      t.text :other_desc
      t.boolean :state,:default => 0

      t.timestamps
    end
  end
end

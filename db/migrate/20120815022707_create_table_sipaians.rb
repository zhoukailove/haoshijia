class CreateTableSipaians < ActiveRecord::Migration
  def change
    create_table :sipaians do |t|
      t.string :room_id
      t.string :day
      t.timestamps
    end
    add_index :sipaians, :day
    add_index :sipaians, :room_id
  end
end

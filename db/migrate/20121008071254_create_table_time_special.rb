class CreateTableTimeSpecial < ActiveRecord::Migration
  def change
    create_table :time_specials do |t|
      t.integer :room_id
      t.datetime :time_from
      t.datetime :time_to
      t.float :price
      t.timestamps
    end
  end
end

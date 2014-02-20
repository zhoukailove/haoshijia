class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.integer :room_id
      t.integer :rank
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end

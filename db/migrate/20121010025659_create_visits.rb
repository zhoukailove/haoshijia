class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :room_id
      t.datetime :count_step
      t.integer :counter

      t.timestamps
    end

    add_index :visits, :room_id
    add_index :visits, :counter
    add_index :visits, :count_step
  end
end

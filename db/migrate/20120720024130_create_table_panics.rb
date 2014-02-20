class CreateTablePanics < ActiveRecord::Migration
  def change
    create_table :panics do |t|
      t.integer :room_id
      t.string :photo
      t.datetime  :deleted_at
      t.timestamps
    end
    # change_table :panics do |t|
    #   t.index :deleted_at
    #   t.index :room_id
    # end
  end
end

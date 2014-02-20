class CreateTableRecommend < ActiveRecord::Migration
  def change
    create_table :recommends do |t|
      t.integer  :room_id
      t.integer  :position
      t.timestamps
    end

    add_index :recommends, :room_id
  end
end

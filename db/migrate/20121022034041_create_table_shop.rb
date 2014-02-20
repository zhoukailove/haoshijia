class CreateTableShop < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.integer :user_id
      t.string  :photo
      t.timestamps
    end

    add_index :shops, :user_id
  end
end

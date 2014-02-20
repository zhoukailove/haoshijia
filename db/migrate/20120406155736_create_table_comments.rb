class CreateTableComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :room_id
      t.string :context
      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :room_id
    add_index :comments, :context
  end
end

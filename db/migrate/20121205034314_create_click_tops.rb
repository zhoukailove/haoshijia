class CreateClickTops < ActiveRecord::Migration
  def change
    create_table :click_tops do |t|
      t.integer :user_id
      t.integer :monthly
      t.integer :totally

      t.timestamps
    end

    add_index :click_tops, :user_id
    add_index :click_tops, :monthly
    add_index :click_tops, :totally
  end
end

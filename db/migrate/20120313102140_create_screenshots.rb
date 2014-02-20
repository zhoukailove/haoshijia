class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|
      t.integer :room_id
      t.string :avatar

      t.timestamps
    end
  end
end

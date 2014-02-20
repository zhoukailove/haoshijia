class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.integer :user_id
      t.string :ip

      t.timestamps
    end
  end
end

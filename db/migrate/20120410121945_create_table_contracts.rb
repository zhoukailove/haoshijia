class CreateTableContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string  :name
      t.integer :owner_id
      t.integer :level
      t.date    :start_at
      t.date    :end_at
      t.text    :describe
      t.boolean :state,:defalut => true
      t.timestamps
    end
    add_index :contracts, :owner_id
    add_index :contracts, :start_at
    add_index :contracts, :end_at 	
  end
end

class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.integer :level
      t.integer :upid
      t.integer :usetype
      t.integer :displayorder
    end
  end
end

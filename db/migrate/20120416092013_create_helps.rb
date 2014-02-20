class CreateHelps < ActiveRecord::Migration
  def change
    create_table :helps do |t|
      t.string :title
      t.text :content
      t.string :category
      t.timestamps
    end
  end
end

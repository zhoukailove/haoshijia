class CreateTableSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :room_ids
    end      	  	
  end
end

class AddIndexTypeToAdminStatistics < ActiveRecord::Migration
  def change
  	change_table :admin_statistics do |t|
  		t.index :category
  		t.index :created_at
  	end
  end
end

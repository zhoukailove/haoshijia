class AddRegistFromToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :regist_from, :string,:default => nil
  end
end

class AddIndexToUsers < ActiveRecord::Migration
  def change
    #add_column :users, :email, :string
    add_index :users, :email, unique: true
    #add_column :users, :mobile, :string
    #add_index :users
  end
end

class AddUserIdToUsers < ActiveRecord::Migration
  def change
    add_column :rooms, :user_id, :integer
    remove_column :addresses, :user_id
  end
end

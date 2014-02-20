class AddUserIdtoVisits < ActiveRecord::Migration
  def change
    add_column :visits, :user_id, :integer
    add_index :visits, :user_id
  end
end

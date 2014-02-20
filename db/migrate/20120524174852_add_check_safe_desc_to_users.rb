class AddCheckSafeDescToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :check_safe_desc, :text,:default => nil
  end
end

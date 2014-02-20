class AddColumCheckSafeToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :check_safe, :boolean,:default => false
  end
end

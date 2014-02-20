class ModifiedBirthdayToUsers < ActiveRecord::Migration
  def change
  	change_column :users, :birthday, :date,:default => nil
  end
end

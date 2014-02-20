class AddBirthdayToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :birthday, :string,:default => nil
  end
end

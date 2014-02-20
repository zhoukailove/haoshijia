class AddLicenseToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :license_photo, :string,:default => nil
  	add_column :users, :hygiene, :boolean,:default => false
  	add_column :users, :safe, :boolean,:default => false
  end
end

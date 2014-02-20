class AddLiscensePhoto2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :license_photo2, :string
    add_column :users, :company_license_photo, :string
  end
end

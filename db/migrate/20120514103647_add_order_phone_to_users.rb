class AddOrderPhoneToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :order_phone, :string,:default => nil
  end
end

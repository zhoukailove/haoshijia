class AddSHopUrlToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :shop_url, :string
  end
end

class AddBussinessToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :bussiness, :string
  end
end

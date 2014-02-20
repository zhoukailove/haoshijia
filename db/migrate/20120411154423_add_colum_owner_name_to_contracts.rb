class AddColumOwnerNameToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :owner_name, :string
  end
end

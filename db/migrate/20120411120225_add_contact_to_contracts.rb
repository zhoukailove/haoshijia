class AddContactToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :contact, :string
  end
end

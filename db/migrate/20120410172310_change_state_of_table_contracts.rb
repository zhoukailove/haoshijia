class ChangeStateOfTableContracts < ActiveRecord::Migration
  def change
    change_column :contracts, :state, :integer,:default => 1
  end

end

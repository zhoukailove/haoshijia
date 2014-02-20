class AddConfirmedToRents < ActiveRecord::Migration
  def change
    add_column :rents, :confirmed, :bool
  end
end

class AddColumnToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :province_id, :integer
    add_column :addresses, :city_id, :integer
    add_column :addresses, :area_id, :integer
    add_column :addresses, :street_id, :integer
  end
end

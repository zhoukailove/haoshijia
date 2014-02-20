class AddCityToPins < ActiveRecord::Migration
  def change
    add_column :pins, :city, :string


    add_index :pins, :city
    add_index :pins, :room_id
    add_index :pins, :rank
  end
end

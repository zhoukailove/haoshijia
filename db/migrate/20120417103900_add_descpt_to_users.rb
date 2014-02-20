class AddDescptToUsers < ActiveRecord::Migration
  def change
    add_column :users, :descript, :text
  end
end

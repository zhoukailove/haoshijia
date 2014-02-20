class AddExtsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :exts, :integer
  end
end

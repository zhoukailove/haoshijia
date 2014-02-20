class AddReferToUsers < ActiveRecord::Migration
  def change
    add_column :users, :refer, :integer
  end
end

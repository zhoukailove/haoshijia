class AddJoiningToUsers < ActiveRecord::Migration
  def change
    add_column :users, :joining, :boolean ,default: 0
  end
end

class AddPriorityToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :priority, :integer,:default => 100
  end
end

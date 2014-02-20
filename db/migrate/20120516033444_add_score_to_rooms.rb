class AddScoreToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :score, :integer, :default => 0
  end
end

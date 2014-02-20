class AddRewardToPanics < ActiveRecord::Migration
  def change
  	add_column :panics, :reward, :boolean,:default => false
  end
end

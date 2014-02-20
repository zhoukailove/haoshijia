class AddSumPaypalToUser < ActiveRecord::Migration
  def change
  	add_column :users, :sum_paypal, :float,:default => 0
  end
end

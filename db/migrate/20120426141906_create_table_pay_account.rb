class CreateTablePayAccount < ActiveRecord::Migration
  def change
    create_table :pay_accounts do |t|
      t.integer :user_id
      t.integer :typee,:defalut => 1
      t.string  :account
      t.string  :pay_number
      t.timestamps
    end
    add_index :pay_accounts, :user_id
    add_index :pay_accounts, :account
    add_index :pay_accounts, :pay_number 	
  end  
end

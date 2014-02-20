class CreateTablePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :order_id
      t.text    :content
      t.timestamps
    end
    add_index :payments, :order_id
  end
end

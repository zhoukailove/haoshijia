class CreateTableShopVisits < ActiveRecord::Migration
  def change
    create_table :shop_visits do |t|
      t.integer :owner_id
      t.integer :visit_count,:default => 0
      t.date    :visit_date
    end
    add_index :shop_visits, :owner_id
    add_index :shop_visits, :visit_date      	
  end

end

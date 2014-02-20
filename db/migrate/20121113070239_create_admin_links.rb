class CreateAdminLinks < ActiveRecord::Migration
  def change
    create_table :admin_links do |t|
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end

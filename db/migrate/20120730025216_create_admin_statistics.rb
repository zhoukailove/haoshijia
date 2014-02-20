class CreateAdminStatistics < ActiveRecord::Migration
  def change
    create_table :admin_statistics do |t|
      t.string :category
      t.integer :value

      t.timestamps
    end
  end
end

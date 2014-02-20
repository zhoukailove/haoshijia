class CreateAdminLogs < ActiveRecord::Migration
  def change
    create_table :admin_logs do |t|
      t.integer :admin_id
      t.string :ip
      t.string :action

      t.timestamps
    end
  end
end

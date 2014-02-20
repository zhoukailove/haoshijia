class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :email
      t.string :password_digest
      t.string :nickname
      t.string :phone
      t.boolean :is_super

      t.timestamps
    end
  end
end

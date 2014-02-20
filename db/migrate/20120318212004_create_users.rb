class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :truename
      t.string :email
      t.string :password_digest
      t.string :mobile
      t.string :role,:default => 'owner'
      t.boolean :state,:default => 1

      t.timestamps
    end
  end
end

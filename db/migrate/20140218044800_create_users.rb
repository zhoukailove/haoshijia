class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :truename
      t.string :email
      t.string :mobile
      t.string :role
      t.integer :state
      t.string :password_reset_token
      t.datetime :password_reset_sent_at
      t.string :avatar
      t.text :descript
      t.string :qq
      t.string :auth_token
      t.integer :stores_count
      t.integer :points

      t.timestamps
    end
  end
end

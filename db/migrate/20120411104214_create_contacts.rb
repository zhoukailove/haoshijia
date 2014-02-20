class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :username
      t.string :content
      t.string :phone
      t.string :email
      t.string :address
      t.string :contact_type
      t.timestamps
    end
  end
end

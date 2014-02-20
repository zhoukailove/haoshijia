class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.integer :car_id
      t.string :rent_type
      t.string :passenger_name
      t.string :passenger_phone
      t.integer :passenger_counts
      t.string :passenger_remark
      t.string :departure
      t.string :departure_detail
      t.datetime :departure_at
      t.integer :duration
      t.integer :distance
      t.string :flight_no
      t.string :signage_text

      t.timestamps
    end
  end
end

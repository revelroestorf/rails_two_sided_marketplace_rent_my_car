class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :car_id
      t.integer :odo_start
      t.integer :odo_end
      t.float :price_per_day
      t.float :price_per_km

      t.timestamps
    end
  end
end
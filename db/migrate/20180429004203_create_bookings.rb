class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :car_id
      t.integer :odo_start
      t.integer :odo_end
      t.float :charge_days
      t.float :charge_kms

      t.timestamps
    end
  end
end

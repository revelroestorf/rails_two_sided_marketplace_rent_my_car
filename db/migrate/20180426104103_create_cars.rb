class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.integer :user_id
      t.string :make
      t.string :model
      t.integer :year
      t.string :full_address
      t.float :price_per_day
      t.float :price_per_km

      t.timestamps
    end
  end
end

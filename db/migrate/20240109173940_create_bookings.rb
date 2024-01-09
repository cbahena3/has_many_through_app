class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :clown_id
      t.integer :user_id
      t.string :date
      t.float :rating
      t.string :preferences

      t.timestamps
    end
  end
end

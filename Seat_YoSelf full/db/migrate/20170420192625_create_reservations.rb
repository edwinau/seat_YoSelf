class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.time :time
      t.date :date
      t.integer :number_of_guests
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps
    end
  end
end

class AddToRestauarants < ActiveRecord::Migration[5.0]
  def change
    change_table :restaurants do |t|
      t.integer :capacity
      t.string :city
      t.string :address
      t.integer :cuisine_id
      t.time :first_seating
      t.time :last_seating
      t.string :phone_number
    end
  end
end

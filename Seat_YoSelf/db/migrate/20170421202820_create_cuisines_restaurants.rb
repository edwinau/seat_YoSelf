class CreateCuisinesRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :cuisines_restaurants do |t|
      t.integer :cuisine_id
      t.integer :restaurant_id
    end
  end
end

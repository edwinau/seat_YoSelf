class DropCuisinesRestaurantsTable < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      change_table :cuisines_restaurants do |t|
        dir.up { drop_table :cuisines_restaurants }
        dir.down { create_table :cuisines_restaurants}
        dir.down { t.integer :cuisine_id, :restaurant_id}
      end
    end
  end
end

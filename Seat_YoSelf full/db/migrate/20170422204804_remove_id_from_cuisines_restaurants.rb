class RemoveIdFromCuisinesRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :cuisines_restaurants, :id
  end
end

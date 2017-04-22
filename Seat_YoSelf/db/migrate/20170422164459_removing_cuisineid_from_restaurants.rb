class RemovingCuisineidFromRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :cuisine_id, :integer
  end
end

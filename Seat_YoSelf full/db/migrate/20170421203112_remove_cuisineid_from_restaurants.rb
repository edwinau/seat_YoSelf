class RemoveCuisineidFromRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :column_id, :integer
  end
end

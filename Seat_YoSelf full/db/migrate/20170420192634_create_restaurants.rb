class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.integer :cuisine_id
      t.integer :owner_id

      t.timestamps
    end
  end
end

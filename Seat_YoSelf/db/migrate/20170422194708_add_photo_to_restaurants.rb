class AddPhotoToRestaurants < ActiveRecord::Migration[5.0]
  def change
    change_table :restaurants do |t|
      t.string :photo
    end
  end
end

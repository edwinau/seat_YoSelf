class RemoveDateFromReservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :date
  end
end

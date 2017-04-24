class UpdateColumnTypeForFirstSeatingAndLastSeating < ActiveRecord::Migration[5.0]
  def change
    change_table :restaurants do |t|
      t.change :first_seating, :integer
      t.change :last_seating, :integer
    end
  end
end

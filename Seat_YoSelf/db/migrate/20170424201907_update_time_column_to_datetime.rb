class UpdateTimeColumnToDatetime < ActiveRecord::Migration[5.0]
  def change
    change_table :reservations do |t|
      t.change :time, :datetime
    end
  end
end

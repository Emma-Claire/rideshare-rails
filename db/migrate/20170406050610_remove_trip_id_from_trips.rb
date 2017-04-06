class RemoveTripIdFromTrips < ActiveRecord::Migration[5.0]
  def change
    remove_column :trips, :trip_id, :integer
  end
end

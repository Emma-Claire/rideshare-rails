class RemoveRiderIdFromPassengers < ActiveRecord::Migration[5.0]
  def change
    remove_column :passengers, :rider_id, :integer
  end
end

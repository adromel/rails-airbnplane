class RemoveColumnAirportIdFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :airport_id
  end
end

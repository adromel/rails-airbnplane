class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :airport, null: false, foreign_key: true
      t.references :aircraft, null: false, foreign_key: true
      t.date :start_on
      t.date :end_on

      t.timestamps
    end
  end
end

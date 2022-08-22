class CreateAircrafts < ActiveRecord::Migration[7.0]
  def change
    create_table :aircrafts do |t|
      t.string :brand
      t.string :model
      t.references :airport, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: { to_table: :users }
      t.float :daily_price

      t.timestamps
    end
  end
end

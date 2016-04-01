class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.string :color
      t.string :license_plate_number
      t.integer :volunteer_id, null: false

      t.timestamps null: false
    end
  end
end

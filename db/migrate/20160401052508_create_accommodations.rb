class CreateAccommodations < ActiveRecord::Migration
  def change
    create_table :accommodations do |t|
      t.string :bedding
      t.string :privacy
      t.integer :guest_capacity
      t.string :pet
      t.integer :num_roommates

      t.timestamps null: false
    end
  end
end

class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string  :street_address_1
      t.string  :street_address_2
      t.string  :city
      t.string  :state
      t.string  :zip_code
      t.integer :user_id
      t.integer :clinic_id

      t.timestamps null: false
    end
  end
end

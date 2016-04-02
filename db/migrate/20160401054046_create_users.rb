class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :role
      t.integer :address_id
      t.string :token
      t.string :uid
      t.string :provider

      t.timestamps null: false
    end
  end
end

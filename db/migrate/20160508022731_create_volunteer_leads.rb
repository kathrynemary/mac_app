class CreateVolunteerLeads < ActiveRecord::Migration
  def change
    create_table :volunteer_leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :interested_in, array: true, default: []
      t.string :phone_number
      t.integer :volunteer_id

      t.timestamps null: false
    end
  end
end

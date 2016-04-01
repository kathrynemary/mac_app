class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :title
      t.string :transit_accessible
      t.string :abortion_types
      t.string :site_url
      t.string :map_url
      t.integer :address_id
      t.integer :business_hours_id
      

      t.timestamps null: false
    end
  end
end

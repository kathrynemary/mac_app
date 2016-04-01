class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :gender
      t.string :type
      t.boolean :on_call
      t.integer :user_id
      t.integer :accommodation_id
      t.integer :car_id

      t.timestamps null: false
    end
  end
end

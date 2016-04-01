class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :gender
      t.string :type
      t.boolean :on_call
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end

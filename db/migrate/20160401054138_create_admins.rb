class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :position
      t.boolean :board_member
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

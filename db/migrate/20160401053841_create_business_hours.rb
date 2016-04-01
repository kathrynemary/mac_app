class CreateBusinessHours < ActiveRecord::Migration
  def change
    create_table :business_hours do |t|
      t.time :open_time
      t.time :close_time
      t.integer :day_of_week
      t.integer :business_id

      t.timestamps null: false
    end
  end
end

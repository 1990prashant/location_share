class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.decimal :lat, precision: 10, scale: 7
      t.decimal :lon, precision: 10, scale: 7
      t.integer :user_id

      t.timestamps
    end
  end
end

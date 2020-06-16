class CreateSharedLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :shared_locations do |t|
      t.integer :location_id
      t.integer :user_id
      t.integer :shared_with

      t.timestamps
    end
  end
end

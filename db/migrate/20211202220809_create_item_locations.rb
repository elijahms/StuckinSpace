class CreateItemLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :item_locations do |t|
      t.integer :item_id
      t.integer :room_id
      t.boolean :is_in
    end 
  end
end

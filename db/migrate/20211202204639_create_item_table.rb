class CreateItemTable < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :is_takeble
      t.boolean :is_talkable
      t.boolean :is_attackable
      t.float :durability
      t.string :description
    end 
  end
end

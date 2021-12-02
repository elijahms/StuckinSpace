class CreateUserTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :health
      t.integer :score
      t.boolean :is_dead
      t.integer :room_id
    end
  end
end

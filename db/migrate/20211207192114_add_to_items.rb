class AddToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :has_been_taken, :boolean
    add_column :items, :has_been_attacked, :boolean
    add_column :items, :has_been_talked, :boolean
  end
end

class AddDeathFunctions < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :death_trigger, :string
    add_column :rooms, :death_threshold, :integer
  end
end

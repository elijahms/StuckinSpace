class UpdateRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :death_threshold_met, :string
  end
end

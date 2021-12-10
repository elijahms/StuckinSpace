class FixTypo < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :second_in_game
    add_column :users, :seconds_in_game, :integer
  end
end

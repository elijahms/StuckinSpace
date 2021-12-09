class AddSomeColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :minutes_in_game, :integer
    add_column :users, :second_in_game, :integer
    add_column :rooms, :intro_description, :string
  end
end

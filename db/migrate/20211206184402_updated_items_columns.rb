class UpdatedItemsColumns < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :is_takeable
      t.string :description
      t.string :inspect_choice_1
      t.string :inspect_choice_2
      t.boolean :is_talkable
      t.string :talk_response
      t.string :talk_choice_1
      t.string :talk_choice_2
      t.boolean :is_attackable
      t.string :attack_response
      t.float :durability
      t.integer :catalyst_item
      t.string :catalyst_response
      t.boolean :exit_trigger
      t.string :triggers_on
    end
  end
end

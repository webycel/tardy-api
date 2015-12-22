class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, default: ""
      t.string :settings, default: "{}"
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :teams, :user_id
  end
end

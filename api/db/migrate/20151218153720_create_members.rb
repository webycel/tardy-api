class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      # t.references :team, index: true, foreign_key: true
      t.string :name
      t.integer :team_id
      t.integer :total_counter
      t.integer :counter

      t.timestamps null: false
    end
    add_index :members, :team_id
  end
end

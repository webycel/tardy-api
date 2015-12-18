class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.references :team, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end

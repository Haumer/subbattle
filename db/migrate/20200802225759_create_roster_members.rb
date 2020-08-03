class CreateRosterMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :roster_members do |t|
      t.string :username
      t.integer :rating
      t.references :roster, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

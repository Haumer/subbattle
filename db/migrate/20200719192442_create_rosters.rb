class CreateRosters < ActiveRecord::Migration[6.0]
  def change
    create_table :rosters do |t|
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end

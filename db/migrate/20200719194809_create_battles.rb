class CreateBattles < ActiveRecord::Migration[6.0]
  def change
    create_table :battles do |t|
      t.datetime :date
      t.references :away_team, index: true, foreign_key: {to_table: :teams}
      t.references :home_team, index: true, foreign_key: {to_table: :teams}

      t.timestamps
    end
  end
end

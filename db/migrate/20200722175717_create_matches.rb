class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.references :home_member
      t.references :away_member
      t.string :winner, default: ""
      t.string :loser, default: ""
      t.string :status, default: "playing"

      t.timestamps
    end
    add_foreign_key :matches, :users, column: :home_member_id, primary_key: :id
    add_foreign_key :matches, :users, column: :away_member_id, primary_key: :id
  end
end

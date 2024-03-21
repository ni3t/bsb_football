class CreateSeasonEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :season_entries do |t|
      t.references :season, null: false, foreign_key: true
      t.references :league_membership, null: false, foreign_key: true

      t.timestamps
    end
  end
end

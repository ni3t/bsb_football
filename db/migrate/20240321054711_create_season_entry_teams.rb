class CreateSeasonEntryTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :season_entry_teams do |t|
      t.references :season_entry, null: false, foreign_key: true

      t.timestamps
    end
  end
end

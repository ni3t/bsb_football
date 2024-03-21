class CreateSeasonEntryTeamEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :season_entry_team_entries do |t|
      t.references :season_entry_team, null: false, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end

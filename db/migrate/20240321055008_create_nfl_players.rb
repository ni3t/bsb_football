class CreateNflPlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :nfl_players do |t|
      t.integer :sleeper_id, null: false
      t.string :name
      t.string :position
      t.string :team
      t.integer :search_rank
      t.json :sleeper_data

      t.timestamps
    end
  end
end

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_21_055008) do
  create_table "league_memberships", force: :cascade do |t|
    t.integer "league_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_league_memberships_on_league_id"
    t.index ["user_id"], name: "index_league_memberships_on_user_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nfl_players", force: :cascade do |t|
    t.integer "sleeper_id", null: false
    t.string "name"
    t.string "position"
    t.string "team"
    t.integer "search_rank"
    t.json "sleeper_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "season_entries", force: :cascade do |t|
    t.integer "season_id", null: false
    t.integer "league_membership_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_membership_id"], name: "index_season_entries_on_league_membership_id"
    t.index ["season_id"], name: "index_season_entries_on_season_id"
  end

  create_table "season_entry_team_entries", force: :cascade do |t|
    t.integer "season_entry_team_id", null: false
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_entry_team_id"], name: "index_season_entry_team_entries_on_season_entry_team_id"
  end

  create_table "season_entry_teams", force: :cascade do |t|
    t.integer "season_entry_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_entry_id"], name: "index_season_entry_teams_on_season_entry_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.integer "league_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_seasons_on_league_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "league_memberships", "leagues"
  add_foreign_key "league_memberships", "users"
  add_foreign_key "season_entries", "league_memberships"
  add_foreign_key "season_entries", "seasons"
  add_foreign_key "season_entry_team_entries", "season_entry_teams"
  add_foreign_key "season_entry_teams", "season_entries"
  add_foreign_key "seasons", "leagues"
end

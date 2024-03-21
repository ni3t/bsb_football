require "application_system_test_case"

class SeasonEntryTeamEntriesTest < ApplicationSystemTestCase
  setup do
    @season_entry_team_entry = season_entry_team_entries(:one)
  end

  test "visiting the index" do
    visit season_entry_team_entries_url
    assert_selector "h1", text: "Season entry team entries"
  end

  test "should create season entry team entry" do
    visit season_entry_team_entries_url
    click_on "New season entry team entry"

    fill_in "Season entry team", with: @season_entry_team_entry.season_entry_team_id
    fill_in "Type", with: @season_entry_team_entry.type
    click_on "Create Season entry team entry"

    assert_text "Season entry team entry was successfully created"
    click_on "Back"
  end

  test "should update Season entry team entry" do
    visit season_entry_team_entry_url(@season_entry_team_entry)
    click_on "Edit this season entry team entry", match: :first

    fill_in "Season entry team", with: @season_entry_team_entry.season_entry_team_id
    fill_in "Type", with: @season_entry_team_entry.type
    click_on "Update Season entry team entry"

    assert_text "Season entry team entry was successfully updated"
    click_on "Back"
  end

  test "should destroy Season entry team entry" do
    visit season_entry_team_entry_url(@season_entry_team_entry)
    click_on "Destroy this season entry team entry", match: :first

    assert_text "Season entry team entry was successfully destroyed"
  end
end

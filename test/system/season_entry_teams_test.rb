require "application_system_test_case"

class SeasonEntryTeamsTest < ApplicationSystemTestCase
  setup do
    @season_entry_team = season_entry_teams(:one)
  end

  test "visiting the index" do
    visit season_entry_teams_url
    assert_selector "h1", text: "Season entry teams"
  end

  test "should create season entry team" do
    visit season_entry_teams_url
    click_on "New season entry team"

    fill_in "Season entry", with: @season_entry_team.season_entry_id
    click_on "Create Season entry team"

    assert_text "Season entry team was successfully created"
    click_on "Back"
  end

  test "should update Season entry team" do
    visit season_entry_team_url(@season_entry_team)
    click_on "Edit this season entry team", match: :first

    fill_in "Season entry", with: @season_entry_team.season_entry_id
    click_on "Update Season entry team"

    assert_text "Season entry team was successfully updated"
    click_on "Back"
  end

  test "should destroy Season entry team" do
    visit season_entry_team_url(@season_entry_team)
    click_on "Destroy this season entry team", match: :first

    assert_text "Season entry team was successfully destroyed"
  end
end

require "application_system_test_case"

class SeasonEntriesTest < ApplicationSystemTestCase
  setup do
    @season_entry = season_entries(:one)
  end

  test "visiting the index" do
    visit season_entries_url
    assert_selector "h1", text: "Season entries"
  end

  test "should create season entry" do
    visit season_entries_url
    click_on "New season entry"

    fill_in "League membership", with: @season_entry.league_membership_id
    fill_in "Season", with: @season_entry.season_id
    click_on "Create Season entry"

    assert_text "Season entry was successfully created"
    click_on "Back"
  end

  test "should update Season entry" do
    visit season_entry_url(@season_entry)
    click_on "Edit this season entry", match: :first

    fill_in "League membership", with: @season_entry.league_membership_id
    fill_in "Season", with: @season_entry.season_id
    click_on "Update Season entry"

    assert_text "Season entry was successfully updated"
    click_on "Back"
  end

  test "should destroy Season entry" do
    visit season_entry_url(@season_entry)
    click_on "Destroy this season entry", match: :first

    assert_text "Season entry was successfully destroyed"
  end
end

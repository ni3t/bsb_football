require "test_helper"

class SeasonEntryTeamEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @season_entry_team_entry = season_entry_team_entries(:one)
  end

  test "should get index" do
    get season_entry_team_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_season_entry_team_entry_url
    assert_response :success
  end

  test "should create season_entry_team_entry" do
    assert_difference("SeasonEntryTeamEntry.count") do
      post season_entry_team_entries_url, params: { season_entry_team_entry: { season_entry_team_id: @season_entry_team_entry.season_entry_team_id, type: @season_entry_team_entry.type } }
    end

    assert_redirected_to season_entry_team_entry_url(SeasonEntryTeamEntry.last)
  end

  test "should show season_entry_team_entry" do
    get season_entry_team_entry_url(@season_entry_team_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_season_entry_team_entry_url(@season_entry_team_entry)
    assert_response :success
  end

  test "should update season_entry_team_entry" do
    patch season_entry_team_entry_url(@season_entry_team_entry), params: { season_entry_team_entry: { season_entry_team_id: @season_entry_team_entry.season_entry_team_id, type: @season_entry_team_entry.type } }
    assert_redirected_to season_entry_team_entry_url(@season_entry_team_entry)
  end

  test "should destroy season_entry_team_entry" do
    assert_difference("SeasonEntryTeamEntry.count", -1) do
      delete season_entry_team_entry_url(@season_entry_team_entry)
    end

    assert_redirected_to season_entry_team_entries_url
  end
end

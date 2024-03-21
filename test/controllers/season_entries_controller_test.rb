require "test_helper"

class SeasonEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @season_entry = season_entries(:one)
  end

  test "should get index" do
    get season_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_season_entry_url
    assert_response :success
  end

  test "should create season_entry" do
    assert_difference("SeasonEntry.count") do
      post season_entries_url, params: { season_entry: { league_membership_id: @season_entry.league_membership_id, season_id: @season_entry.season_id } }
    end

    assert_redirected_to season_entry_url(SeasonEntry.last)
  end

  test "should show season_entry" do
    get season_entry_url(@season_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_season_entry_url(@season_entry)
    assert_response :success
  end

  test "should update season_entry" do
    patch season_entry_url(@season_entry), params: { season_entry: { league_membership_id: @season_entry.league_membership_id, season_id: @season_entry.season_id } }
    assert_redirected_to season_entry_url(@season_entry)
  end

  test "should destroy season_entry" do
    assert_difference("SeasonEntry.count", -1) do
      delete season_entry_url(@season_entry)
    end

    assert_redirected_to season_entries_url
  end
end

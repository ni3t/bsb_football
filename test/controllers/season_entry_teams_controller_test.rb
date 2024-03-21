require "test_helper"

class SeasonEntryTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @season_entry_team = season_entry_teams(:one)
  end

  test "should get index" do
    get season_entry_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_season_entry_team_url
    assert_response :success
  end

  test "should create season_entry_team" do
    assert_difference("SeasonEntryTeam.count") do
      post season_entry_teams_url, params: { season_entry_team: { season_entry_id: @season_entry_team.season_entry_id } }
    end

    assert_redirected_to season_entry_team_url(SeasonEntryTeam.last)
  end

  test "should show season_entry_team" do
    get season_entry_team_url(@season_entry_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_season_entry_team_url(@season_entry_team)
    assert_response :success
  end

  test "should update season_entry_team" do
    patch season_entry_team_url(@season_entry_team), params: { season_entry_team: { season_entry_id: @season_entry_team.season_entry_id } }
    assert_redirected_to season_entry_team_url(@season_entry_team)
  end

  test "should destroy season_entry_team" do
    assert_difference("SeasonEntryTeam.count", -1) do
      delete season_entry_team_url(@season_entry_team)
    end

    assert_redirected_to season_entry_teams_url
  end
end

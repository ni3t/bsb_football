require "application_system_test_case"

class Nfl::PlayersTest < ApplicationSystemTestCase
  setup do
    @nfl_player = nfl_players(:one)
  end

  test "visiting the index" do
    visit nfl_players_url
    assert_selector "h1", text: "Players"
  end

  test "should create player" do
    visit nfl_players_url
    click_on "New player"

    fill_in "Nfl team", with: @nfl_player.nfl_team_id
    click_on "Create Player"

    assert_text "Player was successfully created"
    click_on "Back"
  end

  test "should update Player" do
    visit nfl_player_url(@nfl_player)
    click_on "Edit this player", match: :first

    fill_in "Nfl team", with: @nfl_player.nfl_team_id
    click_on "Update Player"

    assert_text "Player was successfully updated"
    click_on "Back"
  end

  test "should destroy Player" do
    visit nfl_player_url(@nfl_player)
    click_on "Destroy this player", match: :first

    assert_text "Player was successfully destroyed"
  end
end

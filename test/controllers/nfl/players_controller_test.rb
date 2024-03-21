require "test_helper"

class Nfl::PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nfl_player = nfl_players(:one)
  end

  test "should get index" do
    get nfl_players_url
    assert_response :success
  end

  test "should get new" do
    get new_nfl_player_url
    assert_response :success
  end

  test "should create nfl_player" do
    assert_difference("Nfl::Player.count") do
      post nfl_players_url, params: { nfl_player: { nfl_team_id: @nfl_player.nfl_team_id } }
    end

    assert_redirected_to nfl_player_url(Nfl::Player.last)
  end

  test "should show nfl_player" do
    get nfl_player_url(@nfl_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_nfl_player_url(@nfl_player)
    assert_response :success
  end

  test "should update nfl_player" do
    patch nfl_player_url(@nfl_player), params: { nfl_player: { nfl_team_id: @nfl_player.nfl_team_id } }
    assert_redirected_to nfl_player_url(@nfl_player)
  end

  test "should destroy nfl_player" do
    assert_difference("Nfl::Player.count", -1) do
      delete nfl_player_url(@nfl_player)
    end

    assert_redirected_to nfl_players_url
  end
end

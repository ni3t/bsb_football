require "test_helper"

class LeagueMembershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @league_membership = league_memberships(:one)
  end

  test "should get index" do
    get league_memberships_url
    assert_response :success
  end

  test "should get new" do
    get new_league_membership_url
    assert_response :success
  end

  test "should create league_membership" do
    assert_difference("LeagueMembership.count") do
      post league_memberships_url, params: { league_membership: { league_id: @league_membership.league_id, user_id: @league_membership.user_id } }
    end

    assert_redirected_to league_membership_url(LeagueMembership.last)
  end

  test "should show league_membership" do
    get league_membership_url(@league_membership)
    assert_response :success
  end

  test "should get edit" do
    get edit_league_membership_url(@league_membership)
    assert_response :success
  end

  test "should update league_membership" do
    patch league_membership_url(@league_membership), params: { league_membership: { league_id: @league_membership.league_id, user_id: @league_membership.user_id } }
    assert_redirected_to league_membership_url(@league_membership)
  end

  test "should destroy league_membership" do
    assert_difference("LeagueMembership.count", -1) do
      delete league_membership_url(@league_membership)
    end

    assert_redirected_to league_memberships_url
  end
end

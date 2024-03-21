require "application_system_test_case"

class LeagueMembershipsTest < ApplicationSystemTestCase
  setup do
    @league_membership = league_memberships(:one)
  end

  test "visiting the index" do
    visit league_memberships_url
    assert_selector "h1", text: "League memberships"
  end

  test "should create league membership" do
    visit league_memberships_url
    click_on "New league membership"

    fill_in "League", with: @league_membership.league_id
    fill_in "User", with: @league_membership.user_id
    click_on "Create League membership"

    assert_text "League membership was successfully created"
    click_on "Back"
  end

  test "should update League membership" do
    visit league_membership_url(@league_membership)
    click_on "Edit this league membership", match: :first

    fill_in "League", with: @league_membership.league_id
    fill_in "User", with: @league_membership.user_id
    click_on "Update League membership"

    assert_text "League membership was successfully updated"
    click_on "Back"
  end

  test "should destroy League membership" do
    visit league_membership_url(@league_membership)
    click_on "Destroy this league membership", match: :first

    assert_text "League membership was successfully destroyed"
  end
end

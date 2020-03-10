require "application_system_test_case"

class DeviseTest < ApplicationSystemTestCase
  test "logging in" do
    visit dashboard_path
    assert_equal(current_path, new_user_session_path)

    user = FactoryBot.create(:user)

    assert_selector "h1", text: "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Sign in"

    assert_equal(current_path, dashboard_path)
  end

  test "invalid login" do
    visit dashboard_path
    user = FactoryBot.create(:user)

    fill_in "Email", with: user.email
    fill_in "Password", with: "random password"
    click_on "Sign in"

    assert_equal(current_path, new_user_session_path)
    assert_selector "div", text: "Invalid Email or password"
  end
end

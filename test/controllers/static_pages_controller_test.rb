require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome_page" do
    get static_pages_welcome_page_url
    assert_response :success
  end

  test "should get privacy_policy" do
    get static_pages_privacy_policy_url
    assert_response :success
  end
end

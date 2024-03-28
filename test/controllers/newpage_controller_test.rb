require "test_helper"

class NewpageControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get newpage_about_url
    assert_response :success
  end
end

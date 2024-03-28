require "test_helper"

class Newpage1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newpage1_index_url
    assert_response :success
  end
end

require "test_helper"

class ExitsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get exits_create_url
    assert_response :success
  end

  test "should get show" do
    get exits_show_url
    assert_response :success
  end
end

require "test_helper"

class PaidUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get paid_users_update_url
    assert_response :success
  end
end

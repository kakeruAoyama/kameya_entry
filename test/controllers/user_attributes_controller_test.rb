require "test_helper"

class UserAttributesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_attributes_new_url
    assert_response :success
  end

  test "should get create" do
    get user_attributes_create_url
    assert_response :success
  end

  test "should get edit" do
    get user_attributes_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_attributes_update_url
    assert_response :success
  end
end

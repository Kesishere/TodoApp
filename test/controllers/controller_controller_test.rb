require 'test_helper'

class ControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get controller_index_url
    assert_response :success
  end

  test "should get update" do
    get controller_update_url
    assert_response :success
  end

  test "should get create" do
    get controller_create_url
    assert_response :success
  end

end

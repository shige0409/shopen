require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get start_path
    assert_response :success
  end
end

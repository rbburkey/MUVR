require 'test_helper'

class MoversControllerTest < ActionController::TestCase
  test "should get portal" do
    get :portal
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

end

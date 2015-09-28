require 'test_helper'

class AcadamicsControllerTest < ActionController::TestCase
  test "should get dept" do
    get :dept
    assert_response :success
  end

  test "should get course" do
    get :course
    assert_response :success
  end

  test "should get curr" do
    get :curr
    assert_response :success
  end

end

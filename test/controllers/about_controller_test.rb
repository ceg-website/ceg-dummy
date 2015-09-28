require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  test "should get mission" do
    get :mission
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

  test "should get board" do
    get :board
    assert_response :success
  end

end

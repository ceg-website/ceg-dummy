require 'test_helper'

class CampuslifeControllerTest < ActionController::TestCase
  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get facilities" do
    get :facilities
    assert_response :success
  end

  test "should get festivals" do
    get :festivals
    assert_response :success
  end

  test "should get clubs" do
    get :clubs
    assert_response :success
  end

  test "should get societies" do
    get :societies
    assert_response :success
  end

  test "should get sports" do
    get :sports
    assert_response :success
  end

  test "should get isrp" do
    get :isrp
    assert_response :success
  end

  test "should get hnd" do
    get :hnd
    assert_response :success
  end

end

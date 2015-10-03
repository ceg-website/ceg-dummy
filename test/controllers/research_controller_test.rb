require 'test_helper'

class ResearchControllerTest < ActionController::TestCase
  test "should get adminstration" do
    get :adminstration
    assert_response :success
  end

  test "should get centres" do
    get :centres
    assert_response :success
  end

  test "should get irt" do
    get :irt
    assert_response :success
  end

  test "should get library" do
    get :library
    assert_response :success
  end

end

require 'test_helper'

class ContactControllerTest < ActionController::TestCase
  test "should get details" do
    get :details
    assert_response :success
  end

  test "should get team" do
    get :team
    assert_response :success
  end

end

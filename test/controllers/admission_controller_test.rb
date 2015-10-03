require 'test_helper'

class AdmissionControllerTest < ActionController::TestCase
  test "should get ug" do
    get :ug
    assert_response :success
  end

  test "should get pg" do
    get :pg
    assert_response :success
  end

  test "should get ugprocedure" do
    get :ugprocedure
    assert_response :success
  end

  test "should get nri" do
    get :nri
    assert_response :success
  end

  test "should get nriprocedure" do
    get :nriprocedure
    assert_response :success
  end

  test "should get pgprocedure" do
    get :pgprocedure
    assert_response :success
  end

end

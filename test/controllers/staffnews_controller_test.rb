require 'test_helper'

class StaffnewsControllerTest < ActionController::TestCase
  setup do
    @staffnews = staffnews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staffnews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staffnews" do
    assert_difference('Staffnews.count') do
      post :create, staffnews: { stid: @staffnews.stid, stnews: @staffnews.stnews }
    end

    assert_redirected_to staffnews_path(assigns(:staffnews))
  end

  test "should show staffnews" do
    get :show, id: @staffnews
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staffnews
    assert_response :success
  end

  test "should update staffnews" do
    patch :update, id: @staffnews, staffnews: { stid: @staffnews.stid, stnews: @staffnews.stnews }
    assert_redirected_to staffnews_path(assigns(:staffnews))
  end

  test "should destroy staffnews" do
    assert_difference('Staffnews.count', -1) do
      delete :destroy, id: @staffnews
    end

    assert_redirected_to staffnews_index_path
  end
end

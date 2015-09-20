require 'test_helper'

class StudentnewsControllerTest < ActionController::TestCase
  setup do
    @studentnews = studentnews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentnews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studentnews" do
    assert_difference('Studentnews.count') do
      post :create, studentnews: { stid: @studentnews.stid, stnews: @studentnews.stnews }
    end

    assert_redirected_to studentnews_path(assigns(:studentnews))
  end

  test "should show studentnews" do
    get :show, id: @studentnews
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studentnews
    assert_response :success
  end

  test "should update studentnews" do
    patch :update, id: @studentnews, studentnews: { stid: @studentnews.stid, stnews: @studentnews.stnews }
    assert_redirected_to studentnews_path(assigns(:studentnews))
  end

  test "should destroy studentnews" do
    assert_difference('Studentnews.count', -1) do
      delete :destroy, id: @studentnews
    end

    assert_redirected_to studentnews_index_path
  end
end

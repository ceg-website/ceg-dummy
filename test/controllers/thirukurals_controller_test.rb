require 'test_helper'

class ThirukuralsControllerTest < ActionController::TestCase
  setup do
    @thirukural = thirukurals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thirukurals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thirukural" do
    assert_difference('Thirukural.count') do
      post :create, thirukural: { cont: @thirukural.cont }
    end

    assert_redirected_to thirukural_path(assigns(:thirukural))
  end

  test "should show thirukural" do
    get :show, id: @thirukural
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thirukural
    assert_response :success
  end

  test "should update thirukural" do
    patch :update, id: @thirukural, thirukural: { cont: @thirukural.cont }
    assert_redirected_to thirukural_path(assigns(:thirukural))
  end

  test "should destroy thirukural" do
    assert_difference('Thirukural.count', -1) do
      delete :destroy, id: @thirukural
    end

    assert_redirected_to thirukurals_path
  end
end

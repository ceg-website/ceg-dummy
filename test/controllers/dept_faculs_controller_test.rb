require 'test_helper'

class DeptFaculsControllerTest < ActionController::TestCase
  setup do
    @dept_facul = dept_faculs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dept_faculs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dept_facul" do
    assert_difference('DeptFacul.count') do
      post :create, dept_facul: { name: @dept_facul.name }
    end

    assert_redirected_to dept_facul_path(assigns(:dept_facul))
  end

  test "should show dept_facul" do
    get :show, id: @dept_facul
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dept_facul
    assert_response :success
  end

  test "should update dept_facul" do
    patch :update, id: @dept_facul, dept_facul: { name: @dept_facul.name }
    assert_redirected_to dept_facul_path(assigns(:dept_facul))
  end

  test "should destroy dept_facul" do
    assert_difference('DeptFacul.count', -1) do
      delete :destroy, id: @dept_facul
    end

    assert_redirected_to dept_faculs_path
  end
end

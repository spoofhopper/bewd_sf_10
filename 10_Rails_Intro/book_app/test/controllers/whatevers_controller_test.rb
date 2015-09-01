require 'test_helper'

class WhateversControllerTest < ActionController::TestCase
  setup do
    @whatever = whatevers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whatevers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whatever" do
    assert_difference('Whatever.count') do
      post :create, whatever: { available: @whatever.available, title: @whatever.title, year: @whatever.year }
    end

    assert_redirected_to whatever_path(assigns(:whatever))
  end

  test "should show whatever" do
    get :show, id: @whatever
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @whatever
    assert_response :success
  end

  test "should update whatever" do
    patch :update, id: @whatever, whatever: { available: @whatever.available, title: @whatever.title, year: @whatever.year }
    assert_redirected_to whatever_path(assigns(:whatever))
  end

  test "should destroy whatever" do
    assert_difference('Whatever.count', -1) do
      delete :destroy, id: @whatever
    end

    assert_redirected_to whatevers_path
  end
end

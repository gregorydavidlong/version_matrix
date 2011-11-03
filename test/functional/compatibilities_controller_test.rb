require 'test_helper'

class CompatibilitiesControllerTest < ActionController::TestCase
  setup do
    @compatibility = compatibilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compatibilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compatibility" do
    assert_difference('Compatibility.count') do
      post :create, :compatibility => @compatibility.attributes
    end

    assert_redirected_to compatibility_path(assigns(:compatibility))
  end

  test "should show compatibility" do
    get :show, :id => @compatibility.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @compatibility.to_param
    assert_response :success
  end

  test "should update compatibility" do
    put :update, :id => @compatibility.to_param, :compatibility => @compatibility.attributes
    assert_redirected_to compatibility_path(assigns(:compatibility))
  end

  test "should destroy compatibility" do
    assert_difference('Compatibility.count', -1) do
      delete :destroy, :id => @compatibility.to_param
    end

    assert_redirected_to compatibilities_path
  end
end

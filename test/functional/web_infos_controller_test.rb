require 'test_helper'

class WebInfosControllerTest < ActionController::TestCase
  setup do
    @web_info = web_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_info" do
    assert_difference('WebInfo.count') do
      post :create, :web_info => @web_info.attributes
    end

    assert_redirected_to web_info_path(assigns(:web_info))
  end

  test "should show web_info" do
    get :show, :id => @web_info.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @web_info.to_param
    assert_response :success
  end

  test "should update web_info" do
    put :update, :id => @web_info.to_param, :web_info => @web_info.attributes
    assert_redirected_to web_info_path(assigns(:web_info))
  end

  test "should destroy web_info" do
    assert_difference('WebInfo.count', -1) do
      delete :destroy, :id => @web_info.to_param
    end

    assert_redirected_to web_infos_path
  end
end

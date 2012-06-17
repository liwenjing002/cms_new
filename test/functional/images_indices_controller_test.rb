require 'test_helper'

class ImagesIndicesControllerTest < ActionController::TestCase
  setup do
    @images_index = images_indices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:images_indices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create images_index" do
    assert_difference('ImagesIndex.count') do
      post :create, :images_index => @images_index.attributes
    end

    assert_redirected_to images_index_path(assigns(:images_index))
  end

  test "should show images_index" do
    get :show, :id => @images_index.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @images_index.to_param
    assert_response :success
  end

  test "should update images_index" do
    put :update, :id => @images_index.to_param, :images_index => @images_index.attributes
    assert_redirected_to images_index_path(assigns(:images_index))
  end

  test "should destroy images_index" do
    assert_difference('ImagesIndex.count', -1) do
      delete :destroy, :id => @images_index.to_param
    end

    assert_redirected_to images_indices_path
  end
end

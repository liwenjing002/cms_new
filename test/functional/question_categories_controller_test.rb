require 'test_helper'

class QuestionCategoriesControllerTest < ActionController::TestCase
  setup do
    @question_category = question_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_category" do
    assert_difference('QuestionCategory.count') do
      post :create, :question_category => @question_category.attributes
    end

    assert_redirected_to question_category_path(assigns(:question_category))
  end

  test "should show question_category" do
    get :show, :id => @question_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @question_category.to_param
    assert_response :success
  end

  test "should update question_category" do
    put :update, :id => @question_category.to_param, :question_category => @question_category.attributes
    assert_redirected_to question_category_path(assigns(:question_category))
  end

  test "should destroy question_category" do
    assert_difference('QuestionCategory.count', -1) do
      delete :destroy, :id => @question_category.to_param
    end

    assert_redirected_to question_categories_path
  end
end

require 'test_helper'

class QuestionResultsControllerTest < ActionController::TestCase
  setup do
    @question_result = question_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_result" do
    assert_difference('QuestionResult.count') do
      post :create, :question_result => @question_result.attributes
    end

    assert_redirected_to question_result_path(assigns(:question_result))
  end

  test "should show question_result" do
    get :show, :id => @question_result.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @question_result.to_param
    assert_response :success
  end

  test "should update question_result" do
    put :update, :id => @question_result.to_param, :question_result => @question_result.attributes
    assert_redirected_to question_result_path(assigns(:question_result))
  end

  test "should destroy question_result" do
    assert_difference('QuestionResult.count', -1) do
      delete :destroy, :id => @question_result.to_param
    end

    assert_redirected_to question_results_path
  end
end

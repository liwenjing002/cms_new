require 'test_helper'

class QuestionResultDetailsControllerTest < ActionController::TestCase
  setup do
    @question_result_detail = question_result_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_result_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_result_detail" do
    assert_difference('QuestionResultDetail.count') do
      post :create, :question_result_detail => @question_result_detail.attributes
    end

    assert_redirected_to question_result_detail_path(assigns(:question_result_detail))
  end

  test "should show question_result_detail" do
    get :show, :id => @question_result_detail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @question_result_detail.to_param
    assert_response :success
  end

  test "should update question_result_detail" do
    put :update, :id => @question_result_detail.to_param, :question_result_detail => @question_result_detail.attributes
    assert_redirected_to question_result_detail_path(assigns(:question_result_detail))
  end

  test "should destroy question_result_detail" do
    assert_difference('QuestionResultDetail.count', -1) do
      delete :destroy, :id => @question_result_detail.to_param
    end

    assert_redirected_to question_result_details_path
  end
end

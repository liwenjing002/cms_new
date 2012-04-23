require 'test_helper'

class QuestionDetailsControllerTest < ActionController::TestCase
  setup do
    @question_detail = question_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_detail" do
    assert_difference('QuestionDetail.count') do
      post :create, :question_detail => @question_detail.attributes
    end

    assert_redirected_to question_detail_path(assigns(:question_detail))
  end

  test "should show question_detail" do
    get :show, :id => @question_detail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @question_detail.to_param
    assert_response :success
  end

  test "should update question_detail" do
    put :update, :id => @question_detail.to_param, :question_detail => @question_detail.attributes
    assert_redirected_to question_detail_path(assigns(:question_detail))
  end

  test "should destroy question_detail" do
    assert_difference('QuestionDetail.count', -1) do
      delete :destroy, :id => @question_detail.to_param
    end

    assert_redirected_to question_details_path
  end
end

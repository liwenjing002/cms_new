require 'test_helper'

class QuestionBasesControllerTest < ActionController::TestCase
  setup do
    @question_basis = question_bases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_bases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_basis" do
    assert_difference('QuestionBase.count') do
      post :create, :question_basis => @question_basis.attributes
    end

    assert_redirected_to question_basis_path(assigns(:question_basis))
  end

  test "should show question_basis" do
    get :show, :id => @question_basis.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @question_basis.to_param
    assert_response :success
  end

  test "should update question_basis" do
    put :update, :id => @question_basis.to_param, :question_basis => @question_basis.attributes
    assert_redirected_to question_basis_path(assigns(:question_basis))
  end

  test "should destroy question_basis" do
    assert_difference('QuestionBase.count', -1) do
      delete :destroy, :id => @question_basis.to_param
    end

    assert_redirected_to question_bases_path
  end
end

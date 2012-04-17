require 'test_helper'

class DreamplansControllerTest < ActionController::TestCase
  setup do
    @dreamplan = dreamplans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dreamplans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dreamplan" do
    assert_difference('Dreamplan.count') do
      post :create, dreamplan: @dreamplan.attributes
    end

    assert_redirected_to dreamplan_path(assigns(:dreamplan))
  end

  test "should show dreamplan" do
    get :show, id: @dreamplan.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dreamplan.to_param
    assert_response :success
  end

  test "should update dreamplan" do
    put :update, id: @dreamplan.to_param, dreamplan: @dreamplan.attributes
    assert_redirected_to dreamplan_path(assigns(:dreamplan))
  end

  test "should destroy dreamplan" do
    assert_difference('Dreamplan.count', -1) do
      delete :destroy, id: @dreamplan.to_param
    end

    assert_redirected_to dreamplans_path
  end
end

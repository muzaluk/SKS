require 'test_helper'

class GadgetsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gadgets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gadget" do
    assert_difference('Gadget.count') do
      post :create, :gadget => { }
    end

    assert_redirected_to gadget_path(assigns(:gadget))
  end

  test "should show gadget" do
    get :show, :id => gadgets(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => gadgets(:one).to_param
    assert_response :success
  end

  test "should update gadget" do
    put :update, :id => gadgets(:one).to_param, :gadget => { }
    assert_redirected_to gadget_path(assigns(:gadget))
  end

  test "should destroy gadget" do
    assert_difference('Gadget.count', -1) do
      delete :destroy, :id => gadgets(:one).to_param
    end

    assert_redirected_to gadgets_path
  end
end

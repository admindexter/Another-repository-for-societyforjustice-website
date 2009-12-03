require 'test_helper'

class DormAccountsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dorm_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dorm_account" do
    assert_difference('DormAccount.count') do
      post :create, :dorm_account => { }
    end

    assert_redirected_to dorm_account_path(assigns(:dorm_account))
  end

  test "should show dorm_account" do
    get :show, :id => dorm_accounts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => dorm_accounts(:one).to_param
    assert_response :success
  end

  test "should update dorm_account" do
    put :update, :id => dorm_accounts(:one).to_param, :dorm_account => { }
    assert_redirected_to dorm_account_path(assigns(:dorm_account))
  end

  test "should destroy dorm_account" do
    assert_difference('DormAccount.count', -1) do
      delete :destroy, :id => dorm_accounts(:one).to_param
    end

    assert_redirected_to dorm_accounts_path
  end
end

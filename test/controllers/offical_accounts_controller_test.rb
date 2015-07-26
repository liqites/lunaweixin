require 'test_helper'

class OfficalAccountsControllerTest < ActionController::TestCase
  setup do
    @offical_account = offical_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offical_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offical_account" do
    assert_difference('OfficalAccount.count') do
      post :create, offical_account: { name: @offical_account.name }
    end

    assert_redirected_to offical_account_path(assigns(:offical_account))
  end

  test "should show offical_account" do
    get :show, id: @offical_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offical_account
    assert_response :success
  end

  test "should update offical_account" do
    patch :update, id: @offical_account, offical_account: { name: @offical_account.name }
    assert_redirected_to offical_account_path(assigns(:offical_account))
  end

  test "should destroy offical_account" do
    assert_difference('OfficalAccount.count', -1) do
      delete :destroy, id: @offical_account
    end

    assert_redirected_to offical_accounts_path
  end
end

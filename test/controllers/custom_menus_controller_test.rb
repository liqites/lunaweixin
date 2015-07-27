require 'test_helper'

class CustomMenusControllerTest < ActionController::TestCase
  setup do
    @custom_menu = custom_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custom_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom_menu" do
    assert_difference('CustomMenu.count') do
      post :create, custom_menu: { func: @custom_menu.func, name: @custom_menu.name }
    end

    assert_redirected_to custom_menu_path(assigns(:custom_menu))
  end

  test "should show custom_menu" do
    get :show, id: @custom_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @custom_menu
    assert_response :success
  end

  test "should update custom_menu" do
    patch :update, id: @custom_menu, custom_menu: { func: @custom_menu.func, name: @custom_menu.name }
    assert_redirected_to custom_menu_path(assigns(:custom_menu))
  end

  test "should destroy custom_menu" do
    assert_difference('CustomMenu.count', -1) do
      delete :destroy, id: @custom_menu
    end

    assert_redirected_to custom_menus_path
  end
end

require 'test_helper'

class AutoMessagesControllerTest < ActionController::TestCase
  setup do
    @auto_message = auto_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auto_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auto_message" do
    assert_difference('AutoMessage.count') do
      post :create, auto_message: { content: @auto_message.content, keyword: @auto_message.keyword, message_type: @auto_message.message_type }
    end

    assert_redirected_to auto_message_path(assigns(:auto_message))
  end

  test "should show auto_message" do
    get :show, id: @auto_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auto_message
    assert_response :success
  end

  test "should update auto_message" do
    patch :update, id: @auto_message, auto_message: { content: @auto_message.content, keyword: @auto_message.keyword, message_type: @auto_message.message_type }
    assert_redirected_to auto_message_path(assigns(:auto_message))
  end

  test "should destroy auto_message" do
    assert_difference('AutoMessage.count', -1) do
      delete :destroy, id: @auto_message
    end

    assert_redirected_to auto_messages_path
  end
end

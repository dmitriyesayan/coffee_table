require "test_helper"

class CoffeeChatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coffee_chats_index_url
    assert_response :success
  end

  test "should get update" do
    get coffee_chats_update_url
    assert_response :success
  end

  test "should get destroy" do
    get coffee_chats_destroy_url
    assert_response :success
  end

  test "should get show" do
    get coffee_chats_show_url
    assert_response :success
  end
end

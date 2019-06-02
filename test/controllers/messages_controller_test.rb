require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message = messages(:one)
    @hashtag_message = messages(:hashtag_one)
    @multi_hashtag_message = messages(:hashtag_two)
    @doubled_hashtag_message = messages(:hashtag_three)
  end

  test "should get index" do
    get messages_url
    assert_response :success
  end

  test "should get new" do
    get new_message_url
    assert_response :success
  end

  test "should create message" do
    assert_difference('Message.count') do
      post messages_url, params: { message: { message: @message.message } }
    end

    assert_redirected_to message_url(Message.last)
  end

  test "should show message" do
    get message_url(@message)
    assert_response :success
  end

  test "should get edit" do
    get edit_message_url(@message)
    assert_response :success
  end

  test "should update message" do
    patch message_url(@message), params: { message: { message: @message.message } }
    assert_redirected_to message_url(@message)
  end

  test "should destroy message" do
    assert_difference('Message.count', -1) do
      delete message_url(@message)
    end

    assert_redirected_to messages_url
  end

  
  ############# ADDITIONAL TESTS #############
  test "should add tag from message" do
    assert_difference('Tag.count') do
      post messages_url, params: { message: { message: @hashtag_message.message } }
    end
  end

  test "should add multiple tag from message" do
    assert_difference('Tag.count', difference=2) do
      post messages_url, params: { message: { message: @multi_hashtag_message.message } }
    end
  end

  test "should add unique instance of tag from message not duplicates" do
    assert_difference('Tag.count') do
      post messages_url, params: { message: { message: @doubled_hashtag_message.message } }
    end
  end
end

require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "blank message should not save" do
    message = Message.new :message => ""
    assert_not message.save
  end

  test "not blank message should save" do
    message = Message.new :message => "test string"
    assert message.save
  end

  test "message over 141 character limit should not save" do
    message = Message.new :message => "Even today in 2016, many Rails developers leave maximum length validation out of their Rails models. This is a mistake. If you are using Post-"
    assert_not message.save
  end #https://www.charactercountonline.com/
end

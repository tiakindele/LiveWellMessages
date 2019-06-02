require 'test_helper'

class MessageTest < ActiveSupport::TestCase
    setup do
        @message = messages(:one)
        @too_long = messages(:long)
        @blank = messages(:blank)
    end

    test "blank message should not save" do
        message = Message.new :message => @blank.message
        assert_not message.save
    end

    test "not blank message should save" do
        message = Message.new :message => @message.message
        assert message.save
    end

    test "message over 141 character limit should not save" do
        message = Message.new :message => @too_long.message
        assert_not message.save
    end #https://www.charactercountonline.com/
end

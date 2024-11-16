require "test_helper"

class CommentTest < ActiveSupport::TestCase
  test "should not save comment without content" do
    comment = Comment.new
    assert_not comment.save, "Saved the comment without content"
  end

  test "should belong to post" do
    comment = comments(:one) # Assuming you have a fixture for comments
    assert_respond_to comment, :post
  end
end

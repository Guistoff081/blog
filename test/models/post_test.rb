require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "should not save post without title" do
    post = Post.new(body: "Some body")
    assert_not post.save, "Saved the post without a title"
  end

  test "should not save post without body" do
    post = Post.new(title: "Some title")
    assert_not post.save, "Saved the post without a body"
  end

  test "should have many comments" do
    post = posts(:one) # Assuming you have a fixture for posts
    assert_respond_to post, :comments
  end
end

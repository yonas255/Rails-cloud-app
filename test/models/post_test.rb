require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "is valid with title and body" do
    post = Post.new(title: "test title", body: "test Body Content")
    assert post.valid?
  end

  test "is invalid without a Title" do
    post = Post.new(body: "Content only")
    assert_not post.valid?
    assert_includes post.errors[:title], "can't be blank"
  end

  test "is invalid without a body" do
    post = Post.new(title: "title only")
    assert_not post.valid?
    assert_includes post.errors[:body], "can't be blank"
  end
end

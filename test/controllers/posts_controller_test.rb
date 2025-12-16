# loads the Rails test environment
# testing helpers
require "test_helper"

# postControllers integration tests
class PostsControllerTest < ActionDispatch::IntegrationTest
  # runs just before each test to configure shared test data
  setup do
    @post = posts(:one)
  end
  # test if the index page loads properly
  test "should get index" do
    # sends a GET request for thr post page route
    get posts_url
    # the HTTP responsed status is 200 ok
    assert_response :success
  end
  # checks if the new post page loading properly
  test "should get new" do
    # sending GET request to the new post route
    get new_post_url
    # asserting the page loads without errors
    assert_response :success
  end
  # check if its creating a new post record
  test "should create post" do
    # asserting the post count increase by 1
    assert_difference("Post.count") do
      # sending a POST request with valid post parameter
      post posts_url, params: { post: { body: @post.body, title: @post.title } }
    end
    # asserting redirect to the newly created post page
    assert_redirected_to post_url(Post.last)
  end
  # testing single post
  test "should show post" do
    # sending GET request to the show route
    get post_url(@post)
    # asserting the page to load properly
    assert_response :success
  end
  # tests if the edit page loading successfully
  test "should get edit" do
    # sending GET request to edit route
    get edit_post_url(@post)
    # asserting to load the page successfully
    assert_response :success
  end

  # testing update the existing post
  test "should update post" do
    # sending a PATCH request with updated post parameters
    patch post_url(@post), params: { post: { body: @post.body, title: @post.title } }
    # asserting to load the page successfully
    assert_redirected_to post_url(@post)
  end
  # checking if its deleting a post
  test "should destroy post" do
    # post count increase by 1
    assert_difference("Post.count", -1) do
      # sending DELETE request for the picked post
      delete post_url(@post)
    end
    # redirect to the post index page
    assert_redirected_to posts_url
  end
end

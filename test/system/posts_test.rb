# defines a system test class for a posts functionality
# inherits from application system Test case to enable browser-based testing

# test case to verify that a post can be created successfully
# simulate a real user creating a new post through the UI
require "application_system_test_case"
# navigates to the posts index page
# entry point for creating a new post
class PostsTest < ApplicationSystemTestCase
  test "creating a post" do
    visit posts_path
    click_on "New Post"

    fill_in "Title", with: "New Post Title"
    fill_in "Body", with: "This is a new post body"
    click_on "Create Post"

    assert_text "Post was successfully created"
    assert_text "New Post Title"
  end
end

require "application_system_test_case"

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

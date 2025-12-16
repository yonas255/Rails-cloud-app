# loads the Rails testing environment and system test configuration
# enable capybara, selenium, and Rails helper for browser-based testing
require 'rails_helper'

# defines a system level test suits for posts functionality
# type: system indicates full end-to-end user interaction test

# helper method to authentication a user before running system test
# creates a test user and signs them in through the UI

# Test case to verify that a user can create a post successfully
# simulates the full post Creation workflow
RSpec.describe "Posts", type: :system do
  def sign_in_user
    user= User.create!(email: "test@example.com", password: "password")
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: "password"
    click_button "Log in"
  end
  # specifies the browser driver for the system test
  # uses selenium with chrome to mirror real user behavior

  # signs in the user before accessing protected routes
  # ensure only authentication users can create posts
  # navigates to the post index page
  # starting point for craetion a new post

  # clicks the "New Post" button
  # opens the post creation form
  it "allows creating a post" do
    driven_by (:selenium_chrome)

    sign_in_user
    visit posts_path

      click_on "New Post"

    fill_in "Title", with: "System Test Title"
    fill_in "Body", with: "System Test Body"

    click_on "Create Post"
    # verifies the success flash message is displayed
    # confirms the post was created successfully
    # confirms the newly created post appears on the page
    # validates both database persistence and UI rendering
    expect(page).to have_content("Post was successfully created")
    expect(page).to have_content("System Test Title")
  end
end

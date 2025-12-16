# loads the rails testing environment and the system test configuration
# provides access to capybara, selenium, and rails helpers
require "rails_helper"

# defines a system-level test for deleting a post
# type: system indicates this test simulates real user interaction with browser

RSpec.describe "Deleting a Post", type: :system do
  # helper method to sign in a users before running the system test
  # create a test user and performs the login steps through the UI
  def sign_in_user
    user = User.create!(email: "test@example.com", password: "password")
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: "password"
    click_button "Log in"
  end

  # main test case to verify that a post can be deleted successfully
  # ensures the delete functionality works end-to-end

  # specifies the browser driver to simulate rea; user interaction
  # uses chrome via selenium for full system testing
  # calls the helper method to authenticate the user
  #  ensures only logged in users can delete posts
  it "deletes a post successfully" do
    driven_by(:selenium_chrome)
    sign_in_user

    # creating a post in the database to be deleted during the test
    # provides known test data for consistent results
    Post.create!(title: "Delete Me", body: "Temporary body, it will be removed")

    # navigates to the post index page
    # displays the list of available post

    visit posts_path

    # targets the specific table row containing the post to delete
    # prevents accidentally deleting the wrong record
    # clicks the delete button for the selected post and triggers the destroy action
    within("tr", text: "Delete Me") do
        click_on "Delete"
    end

    # verifies that a success flash message is displayed
    # confirms the post was deleted correctly
    expect(page).to have_content("Post was successfully destroyed.")

    # ensure the deleted post no longer apperas on the page
    # confirms the record was removed from the database and UI
    expect(page).not_to have_content("Delete Me")
  end
end

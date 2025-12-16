require 'rails_helper'
# loads the Rails testing environment and Rspec configuration
# ensure all Rails helper, mpde;s and testing tools are avaliabel
RSpec.describe Post, type: :model do
    # Defines a model test suits for the post model
    # type: model tells all Rspec this ias a mode-level specification

    # test case to verify that a post is valid when both needed fields are provided
    # this ensures the model accepts correct and complete data
    it "is valid with a title and body" do
    post = Post.new(title: "Hello", body: "Testing body")
    expect(post).to be_valid
  end

  # test case to verify that a post is invalid when the title is missing
  # it confirms presence validation is enforced for the title
  it "is invalid without a title" do
    post = Post.new(title: nil, body: "Body text")
    expect(post).not_to be_valid
  end

  # test case to verofy that a post is invalid when the body is missing
  # it confirms presence validation is enforced for the body attribute
  it "is invalid without a body" do
    post = Post.new(title: "Title", body: nil)
    expect(post).not_to be_valid
  end
end

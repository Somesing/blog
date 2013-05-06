require 'spec_helper'
require 'capybara'
include Capybara::DSL

describe 'CommentsFeatureTest' do

  it "creates a comment for a post" do
    visit '/posts'
    click_link "New Post"
    page.should have_content 'New post'

    fill_in "Name", with: "John Doe"
    fill_in "Title", with: "Hallo!"
    fill_in "Body", with: "This is a integration test for the comments feature!"
    click_button "Create Post"
    page.should have_content 'Post was successfully created.'

    fill_in "Commentor", with: "Anonymous"
    fill_in "Body", with: "In Soviet Russia, blog does you!"
    click_button "Create Comment"

    page.should have_content 'Comment was successfully created.'
  end

end

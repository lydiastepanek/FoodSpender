require 'rails_helper'

feature "the signup process" do

  scenario "has a new user page" do
    visit new_user_url
    expect(page).to have_content "Sign Up"
  end

  feature "signing up a user" do
    before(:each) do
      visit new_user_url
      fill_in 'Email', :with => "example@example.com"
      fill_in 'Password', :with => "example"
      fill_in 'First Name', :with => "Example"
      fill_in 'Last Name', :with => "Example"
      click_on "Submit"
    end

    # scenario "redirects to team index page after signup" do
    #   expect(page).to have_content "Team Index Page"
    # end
    #
    # scenario "shows username on the homepage after signup" do
    #   expect(page).to have_content "testing_username"
    # end
  end

end

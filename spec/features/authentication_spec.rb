require 'rails_helper'

feature "the signup process" do

  scenario "has a new user page" do
    visit new_user_url
    expect(page).to have_content "Sign Up"
  end

  feature "sign up" do
    before(:each) do
      visit new_user_url
      fill_in 'Email', :with => "example@example.com"
      fill_in 'Password', :with => "example"
      fill_in 'First Name', :with => "Example"
      fill_in 'Last Name', :with => "Example"
      click_on "Submit"
    end

    scenario "redirects to user index page after signup" do
      expect(page).to have_content "Users"
    end

    describe "re-signing in" do

      it "redirects to new session url" do
        click_on "Sign Out"
        expect(page).to have_content "Sign In"
      end

      it "allows user to resign in with those credentials" do
        click_on "Sign Out"
        fill_in 'Email', :with => "example@example.com"
        fill_in 'Password', :with => "example"
        expect(page).to have_content "Users"
      end

    end

  end

end

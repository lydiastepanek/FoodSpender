require 'rails_helper'

RSpec.describe User, :type => :model do

  before(:each) do
    User.create!(email: "example@gmail.com", password: "example", first_name: "Example", last_name: "Example")
    @user = User.find_by_email("example@gmail.com")
  end

  describe "password encryption" do
    it "does not save passwords to the database" do
      expect(@user.password).not_to be("example")
    end

    it "encrypts the password usingBcrypt" do
      expect(BCrypt::Password).to receive(:create)
      User.new(email: "jack_bruce", password: "abcdef", first_name: "Jack", last_name: "Bruce")
    end
  end

  describe "session token" do
    it "creates user session token upon creation of user" do
      expect(@user.session_token).not_to be_nil
    end
  end

  describe "email uniqueness" do
    it "does not allow two users to have the same email address" do
      user2 = User.create(email: "example@gmail.com", password: "example2", first_name: "Example", last_name: "Example")
      expect(user2.errors[:email]).to include("has already been taken")
    end
  end
end

require 'rails_helper'

RSpec.describe User, :type => :model do
  describe "password encryption" do
    it "does not save passwords to the database" do
      User.create!(email: "example@gmail.com", password: "example")
      user = User.find_by_email("example@gmail.com")
      expect(user.password).not_to be("example")
    end

    it "encrypts the password usingBcrypt" do
      expect(BCrypt::Password).to receive(:create)
      User.new(email: "jack_bruce", password: "abcdef")
    end
  end

  describe "session token" do
    it "creates user session token upon creation of user" do
      User.create!(email: "example@gmail.com", password: "example")
      user = User.find_by_email("example@gmail.com")
      expect(user.session_token).not_to be_nil    
    end
  end
end

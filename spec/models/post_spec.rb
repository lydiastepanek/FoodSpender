require 'rails_helper'

RSpec.describe Post, :type => :model do
  describe "uniqueness" do
    before(:each) do
      post1 = Post.create(owner_id: 1, score_id: 1, food_id: 1, price: 1, description: "pizza")
    end

    it "does allow two users to have posts with same description" do
      post2 = Post.create(owner_id: 2, score_id: 1, food_id: 1, price: 1, description: "pizza")
      expect(post2.errors[:description]).to be_empty
    end

    it "does not allow one user to have two posts with same description" do
      post3 = Post.create(owner_id: 1, score_id: 1, food_id: 1, price: 1, description: "pizza")
      expect(post3.errors[:description]).to include("must be different for every post")
    end
  end
end

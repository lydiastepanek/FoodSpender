require 'rails_helper'

RSpec.describe Post, :type => :model do
  describe "post uniqueness" do
    it "does allow two users to have posts with same description" do
      post1 = Post.new(owner_id: 1, score_id: 1, food_id: 1, price: 1, description: "pizza")
      post2 = Post.new(owner_id: 2, score_id: 1, food_id: 1, price: 1, description: "pizza")
      post1.save
      post2.save
      expect(post2.errors[:description]).to be_empty
    end

    it "does not allow one user to have two posts with same description" do
      post3 = Post.new(owner_id: 1, score_id: 1, food_id: 1, price: 1, description: "pizza")
      post4 = Post.new(owner_id: 1, score_id: 1, food_id: 1, price: 1, description: "pizza")
      post3.save
      post4.save
      expect(post4.errors[:description]).to include("must be different for every post")
    end
  end
end
